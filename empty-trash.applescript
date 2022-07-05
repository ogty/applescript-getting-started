#!/usr/bin/osascript

tell application "Finder"
    ignoring application responses
        empty the trash
    end ignoring
end tell
