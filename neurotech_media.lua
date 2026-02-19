local LSM = LibStub("LibSharedMedia-3.0")

if not LSM then
    return
else
    LSM:Register("statusbar", "!neurotech01", [[Interface\Addons\neurotech_media\media\textures\neurotech01.tga]])
    LSM:Register("font", "Cabin", [[Interface\Addons\neurotech_media\media\fonts\Cabin.ttf]])
    LSM:Register("font", "Cabin SemiBold", [[Interface\Addons\neurotech_media\media\fonts\Cabin-SemiBold.ttf]])
    LSM:Register("font", "Cabin Bold", [[Interface\Addons\neurotech_media\media\fonts\Cabin-Bold.ttf]])
end
