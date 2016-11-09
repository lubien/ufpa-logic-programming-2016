inc 9 = putStrLn $ show $ 1
inc i =
  do
    putStrLn $ show $ (10 - i)
    inc (i + 1)
