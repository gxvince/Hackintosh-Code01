@echo -off
echo Starting UEFI memory map capture
if exist fs0:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs0:
  goto capture
endif
if exist fs1:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs1:
  goto capture
endif
if exist fs2:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs2:
  goto capture
endif
if exist fs3:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs3:
  goto capture
endif
if exist fs4:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs4:
  goto capture
endif
if exist fs5:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs5:
  goto capture
endif
if exist fs6:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs6:
  goto capture
endif
if exist fs7:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs7:
  goto capture
endif
if exist fs8:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs8:
  goto capture
endif
if exist fs9:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs9:
  goto capture
endif
if exist fs10:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs10:
  goto capture
endif
if exist fs11:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs11:
  goto capture
endif
if exist fs12:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs12:
  goto capture
endif
if exist fs13:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs13:
  goto capture
endif
if exist fs14:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs14:
  goto capture
endif
if exist fs15:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs15:
  goto capture
endif
if exist fs16:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs16:
  goto capture
endif
if exist fs17:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs17:
  goto capture
endif
if exist fs18:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs18:
  goto capture
endif
if exist fs19:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs19:
  goto capture
endif
if exist fs20:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs20:
  goto capture
endif
if exist fs21:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs21:
  goto capture
endif
if exist fs22:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs22:
  goto capture
endif
if exist fs23:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs23:
  goto capture
endif
if exist fs24:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs24:
  goto capture
endif
if exist fs25:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs25:
  goto capture
endif
if exist fs26:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs26:
  goto capture
endif
if exist fs27:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs27:
  goto capture
endif
if exist fs28:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs28:
  goto capture
endif
if exist fs29:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs29:
  goto capture
endif
if exist fs30:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs30:
  goto capture
endif
if exist fs31:\EFI\OC\Tools\Map72d80ecbc5\startup.nsh then
  set -v mapdisk fs31:
  goto capture
endif
echo ERROR - internal EFI not found
goto done
:capture
set -v mapout %mapdisk%\uefi-memmap.txt
if exist %mapout% then
  set -v mapout %mapdisk%\uefi-memmap-2.txt
endif
memmap > %mapout%
if not %lasterror% == 0 then
  echo ERROR - memmap command failed
  goto done
endif
if not exist %mapout% then
  echo ERROR - file missing after write
  goto done
endif
type %mapout%
if not %lasterror% == 0 then
  echo ERROR - could not read saved file
  goto done
endif
echo SAVED AND READ BACK - %mapout%
:done
pause
exit
