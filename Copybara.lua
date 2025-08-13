-- Copybara.lua with a fallback check for GetAddOnMetadata
local function OnAddonLoaded(self, event, name)
    if name == "Copybara" then
        if GetAddOnMetadata then
            local title = GetAddOnMetadata(name, "Title")
            if title then
                print("Addon Loaded: " .. title)
            else
                print("Title metadata missing for addon")
            end
        else
            print("GetAddOnMetadata function is not available")
        end
    end
end
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", OnAddonLoaded)
