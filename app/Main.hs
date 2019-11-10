module Main where

import CreditCardNumberValidator

main :: IO ()
main = do
       
    print $ toDigits 004012889888881889;
    print $ doubleEveryOther . toDigits $ 004012889888881889
    print $ sumDigits . doubleEveryOther .  toDigits $ 4012889888881889
    print $ validate  004012889888881889
