-- Não
not         :: Bool -> Bool
not True    = False
not False   = True

-- E
(&&)        :: Bool -> Bool -> Bool
False && _  =  False
True  &&  x  = x

-- Ou
(||)        :: Bool -> Bool -> Bool
False || x  = x
True  || _  = True

-- Implicação
infix 1 ==>
(==>)       :: Bool -> Bool -> Bool
True  ==> x = x
False ==> x = True

-- Se e somente se
infix 1 <=>
(<=>)       :: Bool -> Bool -> Bool
x <=> y = x == y

-- Ou exclusivo
infix 2 <+>
(<+>)       :: Bool -> Bool -> Bool
x <+> y = x /= y

