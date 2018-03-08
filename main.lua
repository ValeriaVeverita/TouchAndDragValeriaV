-- Title: MovingImages
-- Name: Valeria Veverita
-- Course: ICS2O
-- This program displays images that can be touched an ddragged around on the sreen


--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local blonde = display.newImage("Images/Blonde.png", 150,150)
local blondeWidth = blonde.width
local blondeHeight = blonde.height

local blue = display.newImage("Images/Blue.png",1,1)
local blueWidth = blue.width
local blueHeight = blue.height

--boolean variables to keep track of which object I touched first
local touchedBlonde = false
local touchedBlue = false

--set the initial x and y possition of the objects
blonde.x = 400
blonde.y =500

blue.x = 300
blue.y = 200
--Funtion:BlueGirlListener
--Input:touch listener
--Output: none
--Description:when blondegirl is touched, move her
local function BlondeListener (touch)
	if(touch.phase == "began") then
		if (touchedBlue == false) then
		    touchedBlonde = true
		end
    end

    if ((touch.phase == "moved")and(touchedBlonde == true) ) then
    	blonde.x  = touch.x
    	blonde.y = touch.y
    end
    
    if (touch.phase == "ended")	then
      touchedBlonde = false
      touchedBlue = false
    end
end

-- add the respective listener to each object
blonde:addEventListener("touch", BlondeListener)

--Funtion:BlueGirlListener
--Input:touch listener
--Output: none
--Description:when blue girl is touched, move her
local function BlueListener (touch)
	if(touch.phase == "began") then
		if (touchedBlonde == false) then
		    touchedBlue = true
		end
    end

    if ((touch.phase == "moved")and(touchedBlue == true) ) then
    	blue.x  = touch.x
    	blue.y = touch.y
    end
    
    if (touch.phase == "ended")	then
      touchedBlue = false
      touchedBlonde = false
    end
end

-- add the respective listener to each object
blue:addEventListener("touch",BlueListener)