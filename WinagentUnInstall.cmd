@echo off

REM Cloud Agent Setup
REM Optional parameters:
REM 	UninstallKey="[KEY]" - Security Key for uninstalling the ITM/Endpoint-DLP agent in case this option was turned on in the Realm level

@echo on

"C:\ProgramData\Package Cache\{a72f0be4-26db-4dd7-aa40-c6f757dc83c9}\ITMSaaSBundle.exe" /silent /uninstall /norestart /log ITMSaaSBundle-2.7.0.312_Uninstall.log
