local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Noclip & Speed Menu",
   LoadingTitle = "Cargando Script...",
   LoadingSubtitle = "por Lisandro",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Inicio", 4483362458)

-- BOTÓN DE NOCLIP
Tab:CreateButton({
   Name = "Activar Noclip",
   Callback = function()
       local noclip = true
       game:GetService("RunService").Stepped:Connect(function()
           if noclip then
               if game.Players.LocalPlayer.Character then
                   for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                       if v:IsA("BasePart") then v.CanCollide = false end
                   end
               end
           end
       end)
       Rayfield:Notify({Title = "Sistema", Content = "Noclip Activado"})
   end,
})

-- BOTÓN DE VELOCIDAD
Tab:CreateButton({
   Name = "Velocidad x100",
   Callback = function()
       if game.Players.LocalPlayer.Character then
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
       end
       Rayfield:Notify({Title = "Sistema", Content = "Velocidad aumentada"})
   end,
})
