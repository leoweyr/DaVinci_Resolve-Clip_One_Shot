from shutil import copyfile

try:
    copyfile(".\\mark_clip_middle_frame.lua","C:\\ProgramData\\Blackmagic Design\\DaVinci Resolve\\Fusion\\Scripts\\Edit\\mark_clip_middle_frame.lua") #Replace the above with the file path corresponding to the location of your DaVinci Resolve.
except:
    print("installation error!")
else:
    print("Have installed!")