module Chapter2.Code where

firstOrEmpty    ::  [[Char]] -> [Char]
firstOrEmpty []  = "empty"
firstOrEmpty lst = head lst

data Client = GovOrg     String
            | Company    String Integer Person String
            | Individual Person Bool
            deriving Show
data Person = Person String String
            deriving Show
-- Individual "Jack" "Smith" True
-- GovOrg "Nasa"
-- Company "Pear Inc." 342 "Mr. Sparrow" "CEO"

data Gender = Male | Female | Other
