#!/usr/bin/env lua

--[[            

    Dreambeat Mechanics Demo v.0.0
    by Hushaboom

    Testing the basics for Dreambeat Drum kit

]]--

local myGroups = instrument.groups
local micStrings = {"Kick", "Snare", "Hat"}
local i = 0
local ix = 1

instrument.name = "-< Dreambeat v.0.0.1 Monolith Build >-"

if #instrument.groups < 6 then
    
    --Build groups (Primary - Mic 1)
    while i < 3 do

        local group0 = instrument.groups[i]
        group0.name = micStrings[ix] .. " 0"
        group0.volume = 12
        group0.playbackMode = PlaybackMode.Sampler

        i = i + 1
        ix = ix + 1

        local g = Group()
        instrument.groups:add(g)

    end

    ix = 1

    --Build groups (Secondary - Mic 2)
    while i < 6 do

        local group0 = instrument.groups[i]
        group0.name = micStrings[ix] .. " 1"
        group0.volume = 0
        group0.playbackMode = PlaybackMode.DirectFromDisk

        i = i + 1
        ix = ix + 1

        if i < 6 then

            local g = Group()
            instrument.groups:add(g)

        end
        
    end

    dofile(scriptPath .. filesystem.preferred("/zoner.lua"))

end

--[[     End of Init     ]]--
