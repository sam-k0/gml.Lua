-- Mit Alt + L ausführen
function love.conf(t) -- Ermöglicht das ausgeben auf der Console
    t.console = false;
    t.title = "gmlua"
    t.version = "0.1"
end

-- Initialize the world
function love.load()
    Object = require "lib/classic"          print("Loading classic")
             require "lib/gmconfig"         print("Loading gmconfig")
             require "lib/gmsprites"        print("Loading gmsprites")
             require "lib/gmsound"          print("Loading gmsound")
             require "lib/gmworld"          print("Loading gmworld")
             print("Using love2d ",(love.getVersion()))

    -- Load dependencies
    __main_init_dependencies()

    GMCONFIG = gmconfig();
    GMWORLD = gmworld();
    GMSPRITES = gmsprites();

    gmworld_create();
end
--#region The generic love2d functions

function love.update(delta)
    for i = 1, #GMWORLD.objects do
        GMWORLD.objects[i]:update(delta);
    end
end

function love.draw()
    for i = 1, #GMWORLD.objects do
        GMWORLD.objects[i]:draw();
    end
end
--#endregion

--#region gmlua functions

-- Adds an instance to the game world.
---@param obj any The object to add.
function gmworld_add_object(obj)
    table.insert(GMWORLD.objects, obj)
end

-- This function is usually called when creating the game world. You should add the objects you want to load on room start here.
---@return boolean
function gmworld_create()
    -- creation code
    gmworld_add_object(gmbaseobj())
    
    return true; -- For debugging
end

--#endregion

--#region DO NOT CALL OR CHANGE THESE FUNCTIONS! THEY ARE USED BY THE FRAMEWORK!

function __main_init_dependencies()
    require "__gmbaseobj"
end

--#endregion

