function love.load( )

    --yêu cầu các thư viện ngoài
	require("test")
	require("lib.screen")
	require("render.facade")

	--cài đặt màn hình
	love.screen.init() -- Mandatory : it create the main screen.
    screen = love.screen.getScreen();

    --bắt đầu load font
    render.initWithFont("FSEX300-L.ttf", 16)

	--chỉnh độ lớn màn hình là 80 x 24 ký tự
    screen:setMode( render.calculateSize(80, 24) );

    --cài đặt bộ máy state
    require("state.facade");
    require("state.default");
    --Cài state căn bản nhất cho state engine
    state.setCurrentState( state.default );
end

function love.update(dt)
    --gọi hàm cập nhật của state
    state.update(dt);
end

function love.draw()
    --gọi hàm vẽ của state
    state.draw();
end
