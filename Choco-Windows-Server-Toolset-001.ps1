function main {
    
    Start-Logging
    
    Update-Windows-Configuration

    Install-DevTools
        
    Install-Utils

    Install-Browsers

    Install-Fonts

    Install-ProductivityTools

    #Install-DevTools

    Patch-Sysprep
}

function Start-Logging{
    
    Start-Transcript -OutputDirectory C:\temp\transcripts\ -IncludeInvocationHeader -NoClobber
}

function Update-Windows-Configuration {
    
    Write-Host 
        '
        
        
        ###   Configuring Windows   ###  
    

        '

    choco upgrade -y --exit-when-reboot-detected taskbar-winconfig --params "'/LOCATION:top /SIZE:small /LOCKED:yes /COMBINED:no /CORTANA:icon /AUTOTRAY:no /USEPOWERSHELL:YES'"
    choco upgrade -y --exit-when-reboot-detected desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:NO /Network:YES /RecycleBin:YES /OneDrive:YES'"
    choco upgrade -y --exit-when-reboot-detected explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:yes /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"
}

function Install-Utils {
    
    Write-Host 
        '
        
        
        ###   Utility Software  ###  
    

        '

    choco upgrade -y --exit-when-reboot-detected 7zip.install
    
    #choco upgrade -y --exit-when-reboot-detected adobereader
       
    #choco upgrade -y --exit-when-reboot-detected aria2
    
    choco upgrade -y --exit-when-reboot-detected bulkrenameutility
    
    choco upgrade -y --exit-when-reboot-detected ccleaner

    choco upgrade -y --exit-when-reboot-detected ditto
    
    #choco upgrade -y --exit-when-reboot-detected fastcopy
    
    #choco upgrade -y --exit-when-reboot-detected ffmpeg

    choco upgrade -y --exit-when-reboot-detected greenshot

    #choco upgrade -y --exit-when-reboot-detected handbrake
    
    choco upgrade -y --exit-when-reboot-detected iperf3
    
    #choco upgrade -y --exit-when-reboot-detected irfanview

    #choco upgrade -y --exit-when-reboot-detected irfanviewplugins
    
    #choco upgrade -y --exit-when-reboot-detected jre8

    choco upgrade -y --exit-when-reboot-detected mremoteng

    choco upgrade -y --exit-when-reboot-detected nmap
    
    #choco upgrade -y --exit-when-reboot-detected nordvpn
    
    #choco upgrade -y --exit-when-reboot-detected notepadplusplus

    choco upgrade -y --exit-when-reboot-detected powertoys
    
    choco upgrade -y --exit-when-reboot-detected powershell-core
    
    choco upgrade -y --exit-when-reboot-detected putty.install
    
    choco upgrade -y --exit-when-reboot-detected qbittorrent

    choco upgrade -y --exit-when-reboot-detected rufus
    
    #choco upgrade -y --exit-when-reboot-detected sql-server-management-studio
    
    choco upgrade -y --exit-when-reboot-detected sysinternals
    
    choco upgrade -y --exit-when-reboot-detected teracopy
    
    choco upgrade -y --exit-when-reboot-detected testdisk-photorec
    
    #choco upgrade -y --exit-when-reboot-detected tightvnc
    
    choco upgrade -y --exit-when-reboot-detected treesizefree
    
    choco upgrade -y --exit-when-reboot-detected vlc
    
    choco upgrade -y --exit-when-reboot-detected vmwarevsphereclient
    
    choco upgrade -y --exit-when-reboot-detected winpcap
    
    choco upgrade -y --exit-when-reboot-detected winscp.install
    
    choco upgrade -y --exit-when-reboot-detected wireshark
    
    #choco upgrade -y --exit-when-reboot-detected vlc
    
    choco upgrade -y --exit-when-reboot-detected vmware-tools

    #choco upgrade -y --exit-when-reboot-detected youtube-dl

}

function Install-Browsers {

    Write-Host 
    
        '
        
        
        ###   Internet Browsers   ###
    
    
        '

    choco upgrade -y --exit-when-reboot-detected firefox

    #choco upgrade -y --exit-when-reboot-detected googlechrome

    choco upgrade -y --exit-when-reboot-detected microsoft-edge
    
    choco upgrade -y --exit-when-reboot-detected opera

    #choco upgrade -y --exit-when-reboot-detected firefox-dev --pre 

}

function Install-Fonts {

    Write-Host 
    
        '
        
        
        ###   Installing Fonts   ###
    

        '

    choco upgrade -y --exit-when-reboot-detected cascadiafonts

    choco upgrade -y --exit-when-reboot-detected firacode
}

function Install-DevTools {
    
    Write-Host 
    
        '
        
        
        ###   Dev Tools   ###
    
    
        '

    choco upgrade -y --exit-when-reboot-detected dotnetcore-sdk
    
    choco upgrade -y --exit-when-reboot-detected dotnetfx
    
    choco upgrade -y --exit-when-reboot-detected powershell-core

    choco upgrade -y --exit-when-reboot-detected microsoft-windows-terminal

    #choco upgrade -y --exit-when-reboot-detected git

    #choco upgrade -y --exit-when-reboot-detected git-fork
    
    choco upgrade -y --exit-when-reboot-detected github-desktop

    #choco upgrade -y --exit-when-reboot-detected vscode

    #choco upgrade -y --exit-when-reboot-detected docker-desktop
    
    #choco upgrade -y --exit-when-reboot-detected azure-data-studio

}

function Install-ProductivityTools{
    Write-Host 
        '
        
        
        ###   Instaling Productivity Tools   ###
        
    
        '
    #choco upgrade -y --exit-when-reboot-detected notion
    
    choco upgrade -y --exit-when-reboot-detected notepadplusplus
}

function Patch-Sysprep{
    #read more here http://blog.buktenica.com/windows-management-framework-breaks-sysprep/
    
    New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\StreamProvider" -Name LastFullPayloadTime -Value 0 -PropertyType DWord -Force  
}

main
