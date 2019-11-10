
module CreditCardNumberValidator where

toDigits :: Integer -> [Integer]
toDigits x
    | x <= 0 = []
    | otherwise = toDigits (div x 10) ++ [mod x 10]
    
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther (x:y:xs) = 2*x : y : doubleEveryOther xs
doubleEveryOther [] = []
    
sumDigits :: [Integer] -> Integer
sumDigits = sum . map (sum . toDigits)

validate :: Integer -> Bool
validate x = if mod (sumDigits . doubleEveryOther . toDigits $ x) 10 == 0
    then True
    else False  

    










    
    
       
       
    
    
    
    
