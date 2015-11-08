module LearningDataAnalysis01 where
import Data.List


-- genericLength, genericIndex and sort are functions from Data.List
median :: [Double] -> Double
median [] = 0
median xs = if oddInLength then
                middleValue
            else
                (middleValue + beforeMiddleValue) / 2
            where
                sortedList        = sort xs
                oddInLength       = 1 == (genericLength xs) `mod` 2
                middle            = floor $ (genericLength xs) / 2
                middleValue       = genericIndex sortedList middle
                beforeMiddleValue = genericIndex sortedList (middle-1)

-- Finds the indices of every vowel in a string
-- vowelIndices    :: String -> [Integer]
-- vowelIndices word =
--    map fst $ filter (\(_, letter) -> elem letter "aeiouAEIOU")
--    zip [1..] word
