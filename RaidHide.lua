local addonName, addonTable = ...

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_LOGIN")

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        
        if CompactRaidFrameManager then
            CompactRaidFrameManager:UnregisterAllEvents()
            CompactRaidFrameManager:Hide()
            RegisterStateDriver(CompactRaidFrameManager, "visibility", "hide")
        end

        if CompactRaidFrameContainer then
            CompactRaidFrameContainer:UnregisterAllEvents()
            CompactRaidFrameContainer:Hide()
            RegisterStateDriver(CompactRaidFrameContainer, "visibility", "hide")
        end
    end
end)