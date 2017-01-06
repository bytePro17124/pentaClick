When running this autohotkey script,  

    !LButton::
        MouseClick, Left,X,Y,20,1,
    return

**Alt+LeftClick** spams 20 clicks in an instant.  


    mega_click = y

    ^!RButton::
        	if mega_click = y
        		mega_click = n
    return
    
    ^!LButton::
    	mega_click = y
    	Loop, 360 {
    		if mega_click = n
    			return
    		MouseClick, Left,X,Y,1,1
    		Sleep 625
    	}
    return

**Shift+Alt+RightClick** begins clicking left click about once every .625 seconds for somewhere around 5 minutes. It can be toggled off sooner by pressing the hotkey Shift+Alt+RightClick again.  
