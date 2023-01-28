$winget_AppsToInstall = @(
    "Spotify.Spotify",
    "ShareX.ShareX",
    "Discord.Discord.Canary",
    "Google.Chrome.Dev",
    "RARLab.WinRAR",
    "SlackTechnologies.Slack",
    "Microsoft.VisualStudioCode.Insiders",
    "AgileBits.1Password",
    "RiotGames.LeagueOfLegends.EUW",
    # Power-Toys
    "XP89DCGQ3K6VLD"
)
 
foreach ($package in $winget_AppsToInstall) {
    winget install -e --id $package --accept-source-agreements --accept-package-agreements
}