import System.Enviroment (getArgs)
import LearningDataAnalysis01

main :: IO ()
main = do
    values <- getArgs
    print . median $ map read values
