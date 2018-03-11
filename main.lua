-- Title: MovingImages
-- Name: Valeria Veverita
-- Course: ICS2O
-- This program displays images that can be touched an ddragged around on the sreen


--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables
local backgroundImage = display.newImageRect("Images/MathBackground.jpg", 2048, 1536)
local number0 = display.newImageRect("Images/number0.png", 150,150)
local number0Width = number0.width
local number0Height = number0.height

local number1 = display.newImageRect("Images/number1.png",200,150)
local number1Width = number1.width
local number1Height = number1.height

local number2 = display.newImageRect("Images/number2.png",200,150)
local number2Width = number2.width
local number2Height = number2.height

local number3 = display.newImageRect("Images/number3.png",150,150)
local number3Width = number3.width
local number3Height = number3.height

local number4 = display.newImageRect("Images/number4.png",150,150)
local number4Width = number4.width
local number4Height = number4.height

local number5 = display.newImageRect("Images/number5.png",150,150)
local number5Width = number5.width
local number5Height = number5.height

local number6 = display.newImageRect("Images/number6.png",280,160)
local number6Width = number6.width
local number6Height = number6.height

local number7 = display.newImageRect("Images/number7.png",250,150)
local number7Width = number7.width
local number7Height = number7.height

local number8 = display.newImageRect("Images/number8.png",150,150)
local number8Width = number8.width
local number8Height = number8.height

local number9 = display.newImageRect("Images/number9.png",150,150)
local number9Width = number9.width
local number9Height = number9.height
--boolean variables to keep track of which object I touched first
local touchedNumber0 = false
local touchedNumber1 = false
local touchedNumber2 = false
local touchedNumber3 = false
local touchedNumber4 = false
local touchedNumber5 = false
local touchedNumber6 = false
local touchedNumber7 = false
local touchedNumber8 = false
local touchedNumber9 = false
--set the initial x and y possition of the objects
number0.x = 500
number0.y = 500

number1.x = 80
number1.y = 500

number2.x = 950
number2.y = 700

number3.x = 160
number3.y = 700

number4.x = 900
number4.y = 500

number5.x = 580
number5.y = 700

number6.x = 280
number6.y = 500

number7.x = 700
number7.y = 500

number8.x = 370
number8.y = 700

number9.x = 780
number9.y = 700
--Funtion:ZeroListener
--Input:touch listener
--Output: none
--Description:when number0 is touched, move it
local function ZeroListener (touch)
	if(touch.phase == "began") then
		if ((touchedNumber1 == false)and(touchedNumber2 == false) and (touchedNumber3 == false) and (touchedNumber4 == false) and (touchedNumber5 == false) and (touchedNumber6 == false) and (touchedNumber7 == false) and (touchedNumber8 == false) and (touchedNumber9 == false)) then
		    touchedNumber0 = true
		end
    end

    if ((touch.phase == "moved")and(touchedNumber0 == true) ) then
    	number0.x  = touch.x
    	number0.y = touch.y
    end
    
    if (touch.phase == "ended")	then
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber5 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
    end
end

-- add the respective listener to each object
number0:addEventListener("touch", ZeroListener)

--Funtion:OneListener
--Input:touch listener
--Output: none
--Description:when number1 is touched, move it
local function OneListener (touch)
	if(touch.phase == "began") then
		if ((touchedNumber0 == false) and (touchedNumber2 == false) and (touchedNumber3 == false) and (touchedNumber4 == false) and (touchedNumber5 == false) and (touchedNumber6 == false) and (touchedNumber7 == false) and (touchedNumber8 == false) and (touchedNumber9 == false)) then
		    touchedNumber1 = true
		end
  end

    if ((touch.phase == "moved")and(touchedNumber1 == true) ) then
     number1.x  = touch.x
    	number1.y = touch.y
    end
    
    if (touch.phase == "ended")	then
      touchedNumber1= false
      touchedNumber0 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber5 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
    end
end

-- add the respective listener to each object
number1:addEventListener("touch",OneListener)

--Function:TwoTouched
--Input: touch listener
--Output: change the direction of the number
--Description: when number 2 is touched, move it

local function TwoListener (touch)
  if(touch.phase == "began") then
    if ((touchedNumber0 == false) and (touchedNumber1 == false) and (touchedNumber3 == false) and (touchedNumber4 == false) and (touchedNumber5 == false) and (touchedNumber6 == false) and (touchedNumber7 == false) and (touchedNumber8 == false) and (touchedNumber9 == false)) then
         touchedNumber2 = true
    end
  end

    if ((touch.phase == "moved")and(touchedNumber2 == true) ) then
     number2.x  = touch.x
      number2.y = touch.y
    end
    
    if (touch.phase == "ended") then
      touchedNumber2= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber5 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
    end
end

--add the listener to number 2
number2:addEventListener("touch",TwoListener)

--Function:ThreeListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 3 is touched, change its possition

local function ThreeListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber5==false)and(touchedNumber6==false)and(touchedNumber7==false)and(touchedNumber8==false)and(touchedNumber9==false))then
       touchedNumber3 = true
    end
  end

  if ((touch.phase=="moved")and (touchedNumber3==true))then
    number3.x = touch.x
    number3.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber3= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber4 = false
      touchedNumber5 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number3:addEventListener("touch", ThreeListener)

--Function:FourListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 4 is touched, change its possition

local function FourListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber3==false)and(touchedNumber5==false)and(touchedNumber6==false)and(touchedNumber7==false)and(touchedNumber8==false)and(touchedNumber9==false))then
      touchedNumber4 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber4==true))then
    number4.x = touch.x
    number4.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber4= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber5 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number4:addEventListener("touch", FourListener)

--Function:FiveListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 5 is touched, change its possition

local function FiveListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber3==false)and(touchedNumber6==false)and(touchedNumber7==false)and(touchedNumber8==false)and(touchedNumber9==false))then
      touchedNumber5 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber5==true))then
    number5.x = touch.x
    number5.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber5= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number5:addEventListener("touch", FiveListener)

--Function:SixListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 6 is touched, change its possition

local function SixListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber3==false)and(touchedNumber5==false)and(touchedNumber7==false)and(touchedNumber8==false)and(touchedNumber9==false))then
      touchedNumber6 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber6==true))then
    number6.x = touch.x
    number6.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber5= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number6:addEventListener("touch", SixListener)

--Function:SevenListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 7 is touched, change its possition

local function SevenListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber3==false)and(touchedNumber5==false)and(touchedNumber6==false)and(touchedNumber8==false)and(touchedNumber9==false))then
      touchedNumber7 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber7==true))then
    number7.x = touch.x
    number7.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber5= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number7:addEventListener("touch", SevenListener)

--Function:EightListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 8 is touched, change its possition

local function EightListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber3==false)and(touchedNumber5==false)and(touchedNumber7==false)and(touchedNumber6==false)and(touchedNumber9==false))then
      touchedNumber8 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber8==true))then
    number8.x = touch.x
    number8.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber5= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number8:addEventListener("touch", EightListener)

--Function:NineListener
--Input:Touch the object
--Output:Change the direction of the object
--Description:When number 9 is touched, change its possition

local function NineListener( touch )
  if (touch.phase=="began") then
    if ((touchedNumber0==false)and(touchedNumber1==false)and(touchedNumber2==false)and(touchedNumber4==false)and(touchedNumber3==false)and(touchedNumber5==false)and(touchedNumber7==false)and(touchedNumber6==false)and(touchedNumber8==false))then
      touchedNumber9 = true
    end
  end

  if (touch.phase=="moved"and(touchedNumber9==true))then
    number9.x = touch.x
    number9.y = touch.y
  end

  if (touch.phase=="ended")then
      touchedNumber5= false
      touchedNumber0 = false
      touchedNumber1 = false
      touchedNumber2 = false
      touchedNumber3 = false
      touchedNumber4 = false
      touchedNumber6 = false
      touchedNumber7 = false
      touchedNumber8 = false
      touchedNumber9 = false
  end
end

--add the listener to the object
number9:addEventListener("touch", NineListener)

--create a new text pannel
local pannel = display.newRect(50,50,900,300)
--anchor the pannel
pannel.anchorX= 0
pannel.anchorY= 0
--set the color
pannel:setFillColor(1,1,1)

--set the task of the program
local task = display.newText("Arrange the numbers in \n       ascending order",70,120,nil,80)
--anchor the task
task.anchorX = 0
task.anchorY = 0
--set the color of the text
task:setTextColor(0,0,0)