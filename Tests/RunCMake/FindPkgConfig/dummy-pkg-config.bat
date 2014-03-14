@ECHO OFF
IF "%1"=="" (
  EXIT /B 255
)
IF "%1"=="--version" (
  ECHO 0.0-cmake-dummy
  EXIT /B 0
)

IF "%1"=="--exists" (
  IF NOT "%2"=="%PKG_CONFIG_PATH%" (
    EXIT /B 1
  )
)
EXIT /B 0