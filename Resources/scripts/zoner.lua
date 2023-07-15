#!/usr/bin/env lua

--main path
local sample_base_path = filesystem.parentPath(scriptPath) .. "/Samples/"

--Region path (Left/Right - to be managed by switcher)
local group0_path = sample_base_path .. "Group 0/"
local group1_path = sample_base_path .. "Group 1/"

--Sources (Containers holding Mics - subject to randomizer)
local kicks = {group0_path .. "kick/", group1_path .. "kick/"}
local snares = {group0_path .. "snare/", group1_path .. "snare/"}
local hats = {group0_path .. "hat/", group1_path .. "hat/"}

--All Samples in mic folders
local mics = {"mic 1/", "mic 2/"}

--All sample file names 01,02,0n.wav
local sFiles = {
    "01.wav",
    "02.wav",
    "03.wav"
}

local ticker = 1

local sFolders = {}
local kFolder = {}
local sFolder = {}
local hFolder = {}

local sample_table = {}

function in_range(number, min, max)
    return number >= min and number <= max
end


for i = 1, #kicks do
    for j = 1, #mics do
        for k = 1, 3 do
            table.insert(kFolder, {kicks[i] .. mics[j] .. sFiles[k]})
            table.insert(sFolder, {snares[i] .. mics[j] .. sFiles[k]})
            table.insert(hFolder, {hats[i] .. mics[j] .. sFiles[k]})
        end
        
    end
end

print(#kFolder)

for i = 1, #kFolder do
    for j = 1, #kFolder[i] do
        print(kFolder[i][j])
    end
end


