#!/usr/bin/osascript

set folderName to "~/Desktop/"
set inspectUrl to "chrome://inspect/#devices"
set projectUrl to "https://github.com/ogty"

tell application "Google Chrome"
    activate
    set newWindow to (make new window)
    set bounds of front window to {0, 0, 720, 450}
    tell first window
        set n to active tab index
        set theUrl to URL of active tab
        set myTab to make new tab at after tab n with properties {URL: inspectUrl}
    end tell
end tell

delay 1

tell application "Terminal"
    activate
    do script "cd " & folderName
    set bounds of front window to {0, 450, 720, 900}
end tell

delay 1

tell application "Brave"
    activate
    set newWindow to (make new window)
    set bounds of front window to {720, 0, 1440, 900}
    tell first window
        set n to active tab index
        set theUrl to URL of active tab
        set myTab to make new tab at after tab n with properties {URL: projectUrl}
    end tell
end tell
