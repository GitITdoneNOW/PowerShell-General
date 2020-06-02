function main {
    
    Update-Windows-Configuration

    Install-DevTools
        
    Install-Utils

    Install-Browsers

    Install-Fonts

    Install-ProductivityTools

    #Install-DevTools
}

function Update-Windows-Configuration {
    Write-Host 'Configuring Windows'

    choco upgrade -y taskbar-winconfig --params "'/LOCATION:top /SIZE:small /LOCKED:yes /COMBINED:no /CORTANA:icon /AUTOTRAY:no /USEPOWERSHELL:YES'"
    choco upgrade -y desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:NO /Network:YES /RecycleBin:YES /OneDrive:YES'"
    choco upgrade -y explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:yes /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"
}

function Install-Utils {
    
    Write-Host 'Installing Utils'

    choco upgrade -y 7zip.install
    
    #choco upgrade -y adobereader
       
    #choco upgrade -y aria2
    
    choco upgrade -y bulkrenameutility
    
    choco upgrade -y ccleaner

    choco upgrade -y ditto
    
    #choco upgrade -y fastcopy
    
    #choco upgrade -y ffmpeg

    choco upgrade -y greenshot

    #choco upgrade -y handbrake
    
    choco upgrade -y iperf3
    
    #choco upgrade -y irfanview

    #choco upgrade -y irfanviewplugins
    
    #choco upgrade -y jre8

    choco upgrade -y mremoteng

    choco upgrade -y nmap
    
    #choco upgrade -y nordvpn
    
    #choco upgrade -y notepadplusplus

    choco upgrade -y powertoys
    
    choco upgrade -y powershell-core
    
    choco upgrade -y putty.install
    
    choco upgrade -y qbittorrent

    choco upgrade -y rufus
    
    #choco upgrade -y sql-server-management-studio
    
    choco upgrade -y sysinternals
    
    choco upgrade -y teracopy
    
    choco upgrade -y testdisk-photorec
    
    #choco upgrade -y tightvnc
    
    choco upgrade -y treesizefree
    
    choco upgrade -y vlc
    
    choco upgrade -y vmwarevsphereclient
    
    choco upgrade -y winpcap
    
    choco upgrade -y winscp.install
    
    choco upgrade -y wireshark
    
    #choco upgrade -y vlc
    
    choco upgrade -y vmware-tools

    #choco upgrade -y youtube-dl

}

function Install-Browsers {

    Write-Host 'Installing Browsers'

    choco upgrade -y firefox

    #choco upgrade -y googlechrome

    choco upgrade -y microsoft-edge
    
    choco upgrade -y opera

    #choco upgrade -y firefox-dev --pre 

}

function Install-Fonts {

    Write-Host 'Installing Fonts'

    choco upgrade -y cascadiafonts

    choco upgrade -y firacode
}

function Install-DevTools {
    
    Write-Host 'Installing Dev Tools'

    choco upgrade -y dotnetcore-sdk
    
    choco upgrade -y dotnetfx
    
    choco upgrade -y powershell-core

    choco upgrade -y microsoft-windows-terminal

    #choco upgrade -y git

    #choco upgrade -y git-fork
    
    choco upgrade -y github-desktop

    #choco upgrade -y vscode

    #choco upgrade -y docker-desktop
    
    #choco upgrade -y azure-data-studio

}

function Install-ProductivityTools{
    #choco upgrade -y notion
    
    choco upgrade -y notepadplusplus
}

main
