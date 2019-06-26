# This script requires the Home app to be installed and your Apple TV is connected
-- You may want to update the name of the Apple TV below
try
    tell application "Home"
    	activate
    	tell application "System Events"
    		tell process "Home"
    			set failsafe to 0
                # Update the description of the Apple TV below if needed
    			repeat until exists of (first button of scroll area 1 of group 1 of window 1 whose description is "Apple TV, Living Room")
    				delay 0.2
    				set failsafe to failsafe + 1
    				if failsafe = 100 then error "Script timeout, Apple TV button not found"
    			end repeat
    			delay 0.5
    			click (first button of scroll area 1 of group 1 of window 1 whose description is "Apple TV, Living Room")
    		end tell
    	end tell
    	delay 1
    	quit
    end tell
on error errMsg number errNum
	display dialog errMsg & return & return & errNum buttons {"Cancel", "OK"} default button "OK"
end try
