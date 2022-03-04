
Soundmanager = Object:extend();

function Soundmanager:new()
    self.song = nil;
    love.audio.setVolume(0.03);
    self.startTime = 0;
    self.endTime = 0;
end

function Soundmanager:playSong()
    if((self.song == nil) == false) then 
        print("stopping song...");
    end

    self.startTime = love.timer.getTime( );
    self.song = love.audio.newSource("sound/song.ogg", "stream")
    local result = love.audio.play(self.song)
    if(result)
    then
        print("started playing sound")
        self.endTime = love.timer.getTime();
        print("Took ".. tostring(self.endTime - self.startTime))
        return true;
    end
    return false;
end