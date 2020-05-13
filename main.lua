local remoteFolder = Instance.new('Folder',game:GetService('ReplicatedStorage'))
remoteFolder.Name = 'FakeRemotes'
local mainRemote = Instance.new('RemoteEvent',remoteFolder)
local remoteNames = {
  "Fire",
  "Get",
  "Instance",
  "0",
  "32",
  "64"
}

local fakeDependency = {
  "ModuleHandler",
  "ScriptHandler",
  "PackageHandler"
}

local start_name = remoteNames[math.random(1,#remoteNames)]
local end_name = remoteNames[math.random(1,#remoteNames)]

mainRemote.Name = start_name.. end_name

local Modules = game:GetService('ReplicatedStorage'):FindFirstChild('Modules')
if not Modules then
  error("Missing required folder: Modules. Please re-install.")
end

local ls = Modules:FindFirstChild("Loadstring")

if not ls then
  error("Missing required module: ".. fakeDependency[math.random(1,#fakeDependency)]..". Please re-install")
end

