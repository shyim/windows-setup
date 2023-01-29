$winget_AppsToDelete = @(
    "Microsoft.WindowsMaps_8wekyb3d8bbwe",
    "Microsoft.OneDriveSync_8wekyb3d8bbwe",
    "Microsoft.549981C3F5F10_8wekyb3d8bbwe",
    "Microsoft.BingNews_8wekyb3d8bbwe",
    "Microsoft.GetHelp_8wekyb3d8bbwe",
    "Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe",
    "Microsoft.Paint_8wekyb3d8bbwe",
    "Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe",
    "Microsoft.ScreenSketch_8wekyb3d8bbwe",
    "Microsoft.WindowsAlarms_8wekyb3d8bbwe",
    "Microsoft.BingWeather_8wekyb3d8bbwe",
    "Microsoft.MicrosoftEdge.Stable_8wekyb3d8bbwe",
    "Microsoft.WindowsCalculator_8wekyb3d8bbwe",
    "Microsoft.WindowsCamera_8wekyb3d8bbwe",
    "Microsoft.WindowsNotepad_8wekyb3d8bbwe",
    "Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe",
    "Microsoft.YourPhone_8wekyb3d8bbwe",
    "Microsoft.ZuneMusic_8wekyb3d8bbwe",
    "MicrosoftTeams_8wekyb3d8bbwe",
    "microsoft.windowscommunicationsapps_8wekyb3d8bbwe",
    "MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe"
)

foreach ($package in $winget_AppsToDelete) {
    winget uninstall $package
}


# Disable Defender
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -Type Dword -Force

# Disable UAC

Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0
