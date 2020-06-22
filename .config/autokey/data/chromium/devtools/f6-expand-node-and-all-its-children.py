import subprocess
import re

hotkey = "<f6>"

if re.match('.*Chromium-browser', window.get_active_class()):
    # click is done where the cursor is
    subprocess.run(["xdotool","keydown","alt","click","1","keyup","alt"])
else:
    keyboard.send_keys(hotkey)
