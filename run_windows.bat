@echo off

call scripts/settings_windows.bat

call conda activate %CONDA_ENV_NAME%

set CONFIG=One-Shot_Free-View_Neural_Talking_Head_Synthesis/vox-256-spade.yaml

set  PYTHONPATH=
set PYTHONPATH=%CD%;%CD%/One-Shot_Free-View_Neural_Talking_Head_Synthesis
echo %PYTHONPATH%
call python afy/cam_fomm.py --config %CONFIG% --relative --adapt_scale --no-pad --checkpoint One-Shot_Free-View_Neural_Talking_Head_Synthesis/00000189-checkpoint.pth.tar --use_nvidia %*
