module CardValidatorSpec (spec) where
import Test.Hspec
import CreditCardNumberValidator
        
spec :: Spec
spec = do
    describe "toDigits" $ do
        it "should return digits list of the given number" $ 
          toDigits 23456 `shouldBe` [2,3,4,5,6]
    
    describe "doubleEveryOther" $ do
      it "doubles every other number starting from the right" $ do
        doubleEveryOther [4,0,1,2] `shouldBe` [8,0,2,2]
          
    describe "sumDigits" $ do
        context "when all numbers are less than 10" $ do
          it "sums the given integers list" $ do
            sumDigits [4,5,6,7,8,9] `shouldBe` 39
        
        context "when numbers in the given list are greater or equal to 10" $ do
           it "divide that numbers to digits and sums them first before summing the list" $ do
             sumDigits [4,0,13,14,26,3] `shouldBe` 24

    describe "validate" $ do
        context "when number is divisible by ten" $ do
           it "returns True if number is valid" $ do
             004012889888881889 `shouldSatisfy` validate
        
        context "when number is not divisible by ten" $ do
            it "returns False if number is invalid" $ do
             004012889888881888 `shouldNotSatisfy` validate
