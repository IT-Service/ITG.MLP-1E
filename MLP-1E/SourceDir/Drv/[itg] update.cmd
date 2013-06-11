call "%VS110COMNTOOLS%VsDevCmd.bat"

rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x86\slabbus.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x86\slabcmnt.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x86\slabser.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x86\slabwhnt.sys

rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x64\slabbus.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x64\slabcmnt.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x64\slabser.sys
rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll x64\slabwhnt.sys

inf2cat /driver:. /os:XP_X86,XP_X64,Vista_X86,Vista_X64,7_X86,7_X64,8_X86,8_X64 

signtool sign /a /ac ..\..\Cross.cer /t http://timestamp.verisign.com/scripts/timstamp.dll slabser.cat
signtool sign /a /ac ..\..\Cross.cer /t http://timestamp.verisign.com/scripts/timstamp.dll slabbus.cat
