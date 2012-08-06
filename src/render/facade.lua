---------------------------------------------------------------
-- Make sure that love and love.graphics are presented
assert(love, "love required");
assert(love.graphics, "the love.graphics module was required");

render = {};

render.glyphWidth, render.glyphHeight = 10, 10;

----------------------------------------------------------------------
-- Hàm này load font vào hệ thống cũng như ghi lại các thông số
-- cần thiết để render sau này
----------------------------------------------------------------------
function render.initWithFont(facename, facesize)
	-- Create the new font
	local f = love.graphics.newFont(facename, facesize);
	love.graphics.setFont(f);
	love.graphics.setColor(200,200,200,255);
    -- Get the font glyph data
	render.glyphWidth = f:getWidth(" ");
	render.glyphHeight = f:getHeight();
end

----------------------------------------------------------------------
-- Hàm này dùng để lấy kích cỡ của 1 ô ký tự
----------------------------------------------------------------------
function render.getGlyphSize()
    return render.glyphWidth, render.glyphHeight;
end

----------------------------------------------------------------------
-- Hàm này dùng để tính toán kích cỡ màn hình dựa theo số ký tự
-- ngang và số ký tự dọc
----------------------------------------------------------------------
function render.calculateSize(width, height)
    return render.glyphWidth * width, render.glyphHeight * height
end

----------------------------------------------------------------------
-- Hàm này dùng để ghi 1 đoạn ký tự theo vị trí ô
----------------------------------------------------------------------
function render.drawStringAt( str, x, y)
    love.graphics.print(str,
        render.glyphWidth * x,
        render.glyphHeight * y);
end
