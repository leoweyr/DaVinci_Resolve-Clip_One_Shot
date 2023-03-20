function GetClipMiddleFrame(startFrame, endFrame)
    return ((startFrame - 1) + endFrame)/2
end

function main()
    timeline = Resolve():GetProjectManager():GetCurrentProject():GetCurrentTimeline()
    clips = timeline:GetItemListInTrack("video", 3)
    clipsFrameInfo = {}
    startFrame = 1
    for clipIndex in ipairs(clips) do
        endFrame = (startFrame - 1) + clips[clipIndex]:GetDuration()
        clipsFrameInfo[clipIndex] = {startFrame, endFrame}
        startFrame = endFrame + 1
        clipMiddleFrame = GetClipMiddleFrame(clipsFrameInfo[clipIndex][1],clipsFrameInfo[clipIndex][2])
        timeline:AddMarker(clipMiddleFrame, "Blue", "Clip"..clipIndex.."MiddleFrame", "Clip"..clipIndex.." middle frame is "..clipMiddleFrame, 1, "None")
    end
end

main()