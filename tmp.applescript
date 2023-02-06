tell application "TextEdit" to repeat 5 times' -e 'keystroke "Hello, World!"' -e 'keystroke return

display dialog "Hello, World!"

set the clipboard to (read (POSIX file "<path>") as JPEG picture)

set volume 10
