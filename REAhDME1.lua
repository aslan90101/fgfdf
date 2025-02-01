local plotFolders = {"Plot1", "Plot2", "Plot3", "Plot4", "Plot5"}

for _, plotName in ipairs(plotFolders) do
    local plot = game.Workspace.Plots:FindFirstChild(plotName)
    if plot then
        local barrier = plot:FindFirstChild("Barrier")
        if barrier then
            barrier:Destroy()
        end
    end
end
