@echo -------------------------------------------------------------------------------
@echo This will backup and delete your log files! 
@echo Existing log files will be renamed to log_name.bak  
@echo Existing backups will be overwritten. 
@echo Make sure the server is not running. 
@echo -------------------------------------------------------------------------------

@%SystemRoot%\System32\choice.exe /C YN /N /M "Are you sure you want to delete log files? [Y/N] "
@IF NOT ErrorLevel 2 (
  @echo Deleting log files...
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\error.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\error.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\error.log" "error.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\other_vhosts_access.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\other_vhosts_access.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\log\apache2\other_vhosts_access.log" "other_vhosts_access.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\debugStream.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\debugStream.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\debugStream.log" "debugStream.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\context_sent_to_llm.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\context_sent_to_llm.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\context_sent_to_llm.log" "context_sent_to_llm.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_from_llm.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_from_llm.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_from_llm.log" "output_from_llm.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_to_plugin.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_to_plugin.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\output_to_plugin.log" "output_to_plugin.bak"
  )
  IF EXIST "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\minai.log" (
    del "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\minai.bak"
    ren "\\wsl.localhost\DwemerAI4Skyrim3\var\www\html\HerikaServer\log\minai.log" "minai.bak"
  )
  @echo Log files deleted. 
) ELSE (
  @echo Quit without deleting log files. 
)
@pause