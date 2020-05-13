local modules = game:GetService('ReplicatedStorage'):FindFirstChild('MainModules')
if not modules then
  error("Missing folder. Please re-install.")
end

function sudo_require(mod)
    if mod:IsA("StringValue") then
        -- >> use loadstring module that was downloaded
        local ls = require(modules:WaitForChild("Loadstring"))
        return ls(mod.Value)() -- << return value
    end
end

local dep = game:GetService('ReplicatedStorage'):FindFirstChild('Dep')
if not dep then
  error("Missing folder. Please re-install.")
end

sudo_require(dep:WaitForChild("Main"))
