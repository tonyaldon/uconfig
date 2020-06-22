import re

hotkey = store.get_global_value('hotkey')
chromium_keys = engine.get_return_value()

if re.match('.*Chromium-browser', window.get_active_class()):
    keyboard.send_keys(chromium_keys)
else:
    keyboard.send_keys(hotkey)
