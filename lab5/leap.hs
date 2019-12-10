data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    deriving (Enum, Show)

data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
    deriving (Enum, Read)

type Date = (Int, Month, Int)

leap :: Int -> Bool
leap yr
   | yr `mod` 100 == 0 = yr `mod` 400 == 0
   | yr `mod` 4 == 0 = True
   | otherwise = False