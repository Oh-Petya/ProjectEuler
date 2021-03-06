{-
  The sum of the squares of the first ten natural numbers is,

  12 + 22 + ... + 102 = 385
  The square of the sum of the first ten natural numbers is,

  (1 + 2 + ... + 10)2 = 552 = 3025
  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-}

sumOfSquares :: [Integer] -> Integer
sumOfSquares x = sum . map (^ (2 :: Integer)) $ x

squareOfSum :: [Integer] -> Integer
squareOfSum x = sum x ^ (2 :: Integer)

main :: IO ()
main = print (squareOfSum x - sumOfSquares x)
  where x = [1..100]
