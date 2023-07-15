#!/usr/bin/env lua

--[[            

    Dreambeat Mechanics Demo v.0.0
    by Hushaboom

    Testing the basics for Dreambeat Drum kit

]]--

--Begin with file arrangement

--main path
local sample_base_path = filesystem.parentPath(scriptPath) .. filesystem.preferred("/Samples")
local script_base_path = filesystem.parentPath(scriptPath) .. filesystem.preferred("/scripts")

--Region path   (Left/Right - to be managed by switcher)
local group0_path = filesystem.preferred(sample_base_path .. "/Group 0")
local group1_path = filesystem.preferred(sample_base_path .. "/Group 1")

--Voice path    (Drum - always the middle man - both Regions have these containers)
local kick_path = filesystem.preferred("/kick")
local snare_path = filesystem.preferred("/snare")
local hat_path = filesystem.preferred("/hat")

--Sources (Containers holding samples. - need to be mapped - subject to randomizer)
local kicks = {filesystem.preferred("/mic 1/"), filesystem.preferred("/mic 2/")}
local snares = {filesystem.preferred("/mic 1/"), filesystem.preferred("/mic 2/")}
local hats = {filesystem.preferred("/mic 1/"), filesystem.preferred("/mic 2/")}

--All sample files names 01,02,0n.wav
local s1 = "01.wav"
local s2 = "02.wav"
local s3 = "03.wav"

--[[

        Mic 1 and Mic 2 are going to be the primary Zones
        Sources will be primary groups  

    zones are called thusly:

        zone = <REGION_PATH> .. <VOICE_PATH> .. <SOURCES_PATH> .. <SAMPLE_PATH>
                                              **<SOURCES_PATH> is Array.  

]]--

--Build Primary Mic groups
