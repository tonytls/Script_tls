################################
################################
######  Dev  |  tony_tls  ######
################################
################################



---LoadingPrompt
---
--- Reference : https://github.com/citizenfx/fivem/blob/master/code/client/clrcore/External/Screen.cs#L341
---
---@param loadingText string
---@param spinnerType number
---@return void
function LoadingPrompt(loadingText, spinnerType)

    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end

    if (loadingText == nil) then
        BeginTextCommandBusyString(nil)
    else
        BeginTextCommandBusyString("STRING");
        AddTextComponentSubstringPlayerName(loadingText);
    end

    EndTextCommandBusyString(spinnerType)
end

---LoadingPromptHide
---
--- Reference : https://github.com/citizenfx/fivem/blob/master/code/client/clrcore/External/Screen.cs#L361
---
---@return void
function LoadingPromptHide()
    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end
end


################################
################################
######  Dev  |  tony_tls  ######
################################
################################