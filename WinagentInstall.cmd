@echo off

REM Cloud Agent Setup
REM
REM Following options are available:
REM Required parameters:
REM		TargetDir specifies desired installation directory (default: "%ProgramFiles%\IT Client Utility\Client Utility")
REM		PreConfigPath specifies the full path for the Pre-Configuration file downloaded from the server
REM Optional components params: 
REM 	contentdetection=0 – do not install content detection component
REM		contentdetection=1 – install content detection component
REM		ItxMstrImage=True to install as Master image 
REM Proxy Settings:
REM 	ProxyType=0 No proxy (default)
REM 	ProxyType=1 Static proxy
REM 	ProxyType=2 Dynamic proxy
REM 	ProxyServerHostname="<URL/IP>"
REM 	ProxyServerPort="<Proxy Port>"
REM		ProxyAuthCredentials=1 to use authentication credentials	
REM			ProxyDomain="<Domain Login>" (Optional)
REM			ProxyUsername="<Proxy Username>" *Mandatory if authentication credentials is on (PROXY_AUTH_CREDENTIALS=1)
REM			ProxyPassword="<Proxt Password>" *Mandatory if authentication credentials is on (PROXY_AUTH_CREDENTIALS=1)
REM Installation log:
REM 		/log [Path_To_Log_File] – by default will be create in %TEMP% directory
    
REM Example for installation:
@echo on

ITMSaaSBundle-2.7.0.312.exe /install /quiet /norestart contentdetection=1 TargetDir="%ProgramFiles%\IT Client Utility\Client Utility" PreConfigPath="C:\Temp\preconfig.json" /log ITMSaaSBundle_SetupLog.log
