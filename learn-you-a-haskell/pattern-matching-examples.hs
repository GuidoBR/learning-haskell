lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number!"
lucky x = "No lucky :("

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) 

firstFromTriple :: (a, b, c) -> a
firstFromTriple (x, _, _) = x

secondFromTriple :: (a, b, c) -> b 
secondFromTriple (_, x, _) = x

thirdFromTriple :: (a, b, c) -> c
thirdFromTriple (_, _, x) = x

head' :: [a] -> a
head' []   = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tail' :: [a] -> [a]
tail' []   = error "Can't call tail on an empty list, dummy!"
tail' (_:xs) = xs

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:xs) = 1 + length' xs  

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]  
