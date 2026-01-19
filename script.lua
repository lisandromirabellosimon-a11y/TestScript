
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Menu de Lisandro",
   LoadingTitle = "Cargando Interfaz...",
   LoadingSubtitle = "GitHub Loader",
})

local Tab = Window:CreateTab("Principal", 4483362458)

Tab:CreateButton({
   Name = "Activar Noclip",
   Callback = function()
       local noclip = true
       game:GetService("RunService").Stepped:Connect(function()
           if noclip then
               for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                   if v:IsA("BasePart") then v.CanCollide = false end
               end
           end
       end)
       Rayfield:Notify({Title = "Noclip", Content = "Activado correctamente"})
   end,
})
