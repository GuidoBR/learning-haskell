module LearningDataAnalysis02 where

import Data.List
import Data.Either
import Text.CSV

average :: (Real a, Fractional b) => [a] -> b
average xs = realToFrac(sum xs) / fromIntegral(length xs)

-- Earthquakes data from: http://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php

-- applyToColumnInCSVFile :: ([String] -> b) -> FilePath -> String -> IO (Either String b)
-- applyToColumnInCSVFile f csv column = either
--    Left
--    Right . f . elements
-- columnIndex
--        where
--            columnIndex = getColumnInCSV csv column
--            nfieldsinFile = length $ head csv
--            records = tail $
--                filter (\record -> nfieldsInFile == length record) csv
--            elements ci = map
--                (\record -> genericIndex record ci) records

-- readColumn :: [String] -> [Double]
-- readColumn xs = map read

getColumnInCSV :: CSV -> String -> Either String Integer
getColumnInCSV csv columnName =
    case lookupResponse of
        Nothing -> Left
            "The column does not exist in this CSV File"
        Just x -> Right (fromIntegral x)
    where
        lookupResponse = findIndex (== columnName) (head csv)
-- Example usage in ghci:
-- csv <- parseCSVFromFile "all_month_earthquakes.csv"
-- either (\error -> Left "Problem reading file") (\csv -> getColumnInCSV csv "mag") csv
