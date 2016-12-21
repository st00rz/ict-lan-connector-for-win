#
# File:    core.ps1
# Author:  Tong Shen
# Create:  12/19/2016
# Update:  12/20/2016
# Version: 0.2
#


$default_usr = ""
$default_pwd = ""
$uidfile = "uid.dat"


Function do_login ($usr, $pwd)
{
    $md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
    $utf8 = new-object -TypeName System.Text.UTF8Encoding
    $tmp = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($pwd))[4..11])
    $pwd = ($tmp -replace "-", "").ToLower()

    $params = @{username = $usr; password = $pwd; drop = 0; type = 1; n = 100}
    $ret = Invoke-WebRequest -Uri http://159.226.39.22/cgi-bin/do_login -Method POST -Body $params

    $ret.Content > $uidfile
    return $ret
}

Function do_logout ()
{
    If (-Not (Test-Path $uidfile))
    {
        "Please confirm that your account are on line"
        return @{}
    }

    $uid = Get-Content "$uidfile"

    $params = @{uid = $uid}
    return Invoke-WebRequest -Uri http://159.226.39.22/cgi-bin/do_logout -Method POST -Body $params
}


######### MAIN BEGIN #########

If ($args.Count -lt 1)
{
    "Usage: core.ps1 <login|logout> [username] [password]"
    Exit
}

switch ($args[0])
{
    "login"
    {
        If ($args.Count -ge 2) {$default_usr = $args[1]}
        If ($args.Count -ge 3) {$default_pwd = $args[2]}
        $ret = do_login $default_usr $default_pwd
        $ret.Content
        break
    }
    "logout"
    {
        $ret = do_logout
        $ret.Content
        Remove-Item $uidfile
        break
    }
    Default {"Argument error!"}
}

######### MAIN END #########