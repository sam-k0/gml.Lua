gmbaseobj = Object:extend();

function gmbaseobj:new() 
    S = self;
    S.sprite = GMSPRITES.lua;
    S.x = 0;
    S.y = 0;
    -- drawing variables
    S.sprite_width = S.sprite:getWidth();
    S.sprite_height = S.sprite:getHeight();
    S.sprite_alpha = 1;
    S.x_scale = 1;
    S.y_scale = 1;
    S.orientation = 0;
    S.x_offset = 0;
    S.y_offset = 0;
    S.x_shear = 0;
    S.y_shear = 0;

    gmbaseobj:create() -- Bump create event.
end

function gmbaseobj:create()-- The "Create Event"
    -- Code in here gets only triggered on-creation
    print("Hello! This is __gmbaseobj!")
end

function gmbaseobj:draw() -- The "Draw Event"
    -- You probably shouldn't add stuff here. This only draws the self.sprite
    love.graphics.draw( self.sprite,
                        self.x,
                        self.y,
                        self.orientation,
                        self.x_scale,
                        self.y_scale,
                        self.x_offset,
                        self.y_offset,
                        self.x_shear,
                        self.y_shear
                    );
end

function gmbaseobj:update(delta) -- The "Step Event"
    -- This function gets called every game step.
end
