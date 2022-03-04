gmconfig = Object:extend();

function gmconfig:new()

    love.window.setMode(1024, 768, {resizable=false, vsync=true, minwidth=400, minheight=300})
    love.window.setVSync( 0 )
    self.WINDOW_HEIGHT = love.graphics.getHeight( );
    self.WINDOW_WIDTH =  love.graphics.getWidth( )

    print(string.format("Game Window Width: %d, Height: %d", self.WINDOW_WIDTH, self.WINDOW_HEIGHT))
end