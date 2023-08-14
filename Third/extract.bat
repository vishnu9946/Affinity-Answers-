@echo off
setlocal

set "input_file=input.txt"
set "output_file=extracted_data.tsv"

(for /f "tokens=4,5 delims=;" %%a in ('findstr /r "^[0-9]" "%input_file%"') do echo %%a    %%b) > "%output_file%"

echo Extraction complete. Data saved in %output_file%

endlocal