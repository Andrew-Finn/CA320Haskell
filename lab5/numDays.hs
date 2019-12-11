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

mLengths :: Int -> [Int]
mLengths y = [31,feb,31,30,31,30,31,31,30,31,30,31]
            where 
            feb = if leap y then 29 else 28

numDays :: Date -> Int
numDays (d,m,y)
    = d + sum(take(fromEnum m) (mLengths y)) + (y-1753) * 365 + length [yr | yr <- [1753..y-1], leap yr]