---------------------------------------------------------------
-- Make sure that love and love.graphics are presented
assert(love, "love required");
assert(love.graphics, "the love.graphics module was required");

----------------------------------------------------------------------
-- Định nghĩa các biến local để giấu thông tin
----------------------------------------------------------------------

local glyphWidth, glyphHeight = 10, 10;

----------------------------------------------------------------------
-- Hàm này load font vào hệ thống cũng như ghi lại các thông số
-- cần thiết để render sau này
----------------------------------------------------------------------

local function initWithFont(facename, facesize)
	-- Create the new font
	local f = love.graphics.newFont(facename, facesize);
	love.graphics.setFont(f);
	love.graphics.setColor(200,200,200,255);
    -- Get the font glyph data
	glyphWidth = f:getWidth(" ");
	glyphHeight = f:getHeight();
end

----------------------------------------------------------------------
-- Hàm này dùng để lấy kích cỡ của 1 ô ký tự
----------------------------------------------------------------------

local function getGlyphSize()
    return glyphWidth, glyphHeight;
end

----------------------------------------------------------------------
-- Hàm này dùng để tính toán kích cỡ màn hình dựa theo số ký tự
-- ngang và số ký tự dọc
----------------------------------------------------------------------

local function calculateSize(width, height)
    return glyphWidth * width, glyphHeight * height;
end

----------------------------------------------------------------------
-- Hàm này dùng để ghi 1 đoạn ký tự theo vị trí ô
----------------------------------------------------------------------

local function drawStringAt( str, x, y)
    love.graphics.print(str, glyphWidth * x, glyphHeight * y);
end

----------------------------------------------------------------------
-- Bọc các hàm trong gói hàm render, dồng thời giấu thông tin
----------------------------------------------------------------------

render = {};
render.initWithFont = initWithFont;
render.getGlyphSize = getGlyphSize;
render.calculateSize = calculateSize;
render.drawStringAt = drawStringAt;