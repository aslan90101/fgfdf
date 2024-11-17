-- Создание шарообразного объекта
local spherePart = Instance.new("Part")
spherePart.Size = Vector3.new(15, 15, 15) -- Размер шара
spherePart.Position = Vector3.new(0, 5, 0) -- Позиция объекта
spherePart.Anchored = false -- Делаем объект перемещаемым
spherePart.CanCollide = true -- Объект может сталкиваться с другими объектами
spherePart.Material = Enum.Material.Neon -- Устанавливаем материал на Neon для эффектного вида
spherePart.BrickColor = BrickColor.Random() -- Устанавливаем начальный случайный цвет
spherePart.Shape = Enum.PartType.Ball -- Устанавливаем форму на шар
spherePart.Parent = game.Workspace

-- Функция для изменения цвета
local function changeColor()
    while true do
        spherePart.BrickColor = BrickColor.Random() -- Устанавливаем случайный цвет
        wait(0.5) -- Задержка перед сменой цвета
    end
end

-- Запускаем функцию изменения цвета в отдельном потоке
coroutine.wrap(changeColor)()

-- Функция для перемещения объекта
local function onPartClicked()
    spherePart.Position = spherePart.Position + Vector3.new(0, 0, 5) -- Перемещение объекта на 5 единиц вперед
end

-- Добавление ClickDetector для перемещения объекта
local clickDetector = Instance.new("ClickDetector")
clickDetector.Parent = spherePart -- Привязываем ClickDetector к объекту
clickDetector.MouseClick:Connect(onPartClicked)
