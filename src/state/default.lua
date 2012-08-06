----------------------------------------------------------------------
-- Đây là state ví dụ để sử dụng với state engine
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Yêu cầu phải có ui.render
----------------------------------------------------------------------
assert (love, "Yêu cầu phải có bộ hàm love");
assert (render, "Yêu cầu phải có bộ hàm render");

----------------------------------------------------------------------
-- Tạo ra một default state
----------------------------------------------------------------------
state.default = {}

function state.default.update(dt)
	if love.keyboard.isDown("escape") then
		love.event.quit()
	end
end

function state.default.draw()
    render.drawStringAt("This is a string", 1, 1);
end
