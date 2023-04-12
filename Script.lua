----------------------------------------

---------------------------------------

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local health = humanoid.Health
---------------------------------------
function LVcheck()
	local locallevel = 
	if locallevel == 1 or locallevel <= 10 then
		Islarn = game:GetService("Workspace")["_Origin"].Zone.Default
		ENEY = "
		Qase = "
		QaseCF = game:GetService("Workspace")["_Origin"].NPC.Mark.HumanoidRootPar
	
end
---------------------------------------
function EquipT()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
       if v.Name == "Combat" then
          v.Parent = game:GetService("Players").LocalPlayer.Character
          wait()
          game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(v)
       end
    end
end
-----------------------------------------
function Tpislan()
	topos(Islarn)
	wait()
end
-----------------------------------------
function HealthCheck()
    pcall(function()
        if health <= 0 then
            wait(5)
        end
    end)
end
----------------------------------------
function Attack()
    pcall(function()
        wait()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end)
end
--------------------------------------
spawn(function()
	while wait() do
		if _G.farm then
			pcall(function()
				LVcheck()
				wait()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    topos(QaseCF)
                    game:GetService("ReplicatedStorage").Remote.ToServer:FireServer("GetQuest",Qase)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ENEY then
                            repeat wait()
                                EquipT()
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3.5))
				                game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 10, 0)
					            game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 10, 0)
                                Attack()
                            until v.Humanoid.Healt <= 0
                      end
                  end
                end
			end)
		end
	end
end)

-- if health <= 0 then stop _G.farm until EquipT then run _G.farm  ยังแก้ไม่เป็นแปลว่าคนเขียนโง่

--------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SixZensED/Discord-Library/main/Library"))()
local main = Library:create({
	Name = "Zirco Hub"
})
local tab = main:createtab({
	Name = "Tab"
})

local section = tab:createsection({
	Name = "Section"
})

local page = section:createpage()

page:Toggle({
	Title = "Auto Farm",
	Default = false,
	callback = function(value)
		_G.farm = value
	end,
})



