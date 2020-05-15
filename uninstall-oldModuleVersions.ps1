$foo = Get-InstalledModule
foreach($pkg in $foo) {
    $Latest = Get-InstalledModule $pkg.name
    Get-InstalledModule $pkg.name -AllVersions | Where-Object { $_.Version -ne $latest.Version } | Uninstall-Module
}
