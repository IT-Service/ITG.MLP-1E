call "%VS110COMNTOOLS%VsDevCmd.bat"

signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll mlp_1e.exe
