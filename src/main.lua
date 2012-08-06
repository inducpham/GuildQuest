function love.load( )

    --require external libraries
	require("test")
	require("lib.screen")

	-- body
	local f = love.graphics.newFont("FSEX300-L.ttf", 16)
	love.graphics.setFont(f)
	love.graphics.setColor(200,200,200,255)
	--love.graphics.setBackgroundColor(255,255,255)
	--love.graphics.toggleFullscreen()

	charWidth = f:getWidth(" ")
	charHeight = f:getHeight()
	--set the graphics to be 56 x 12
	love.screen.init() -- Mandatory : it create the main screen.
    screen = love.screen.getScreen()
    screen:setMode(60 * charWidth, 12 * charHeight, false)

end

function love.update(dt)
	if love.keyboard.isDown("escape") then
		love.event.quit()
	end
end

function love.draw()
	-- body
	-- its 12 x 12 + 12 x 12 for minimalism sake

	--[[
	love.graphics.print(charWidth .. ":" .. charHeight ..
	"\nThis is a test string! @", 0, 0)
	--]]
	---[[
	love.graphics.print(
		testMockScreen(), 0, 0)
	--]]
end
