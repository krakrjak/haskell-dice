import System.Random
import System.Environment

handleArgs :: [String] -> [Int]
handleArgs [x,y] = handleArgs [x,y,"1"]
handleArgs [x,y,z] = map (\n -> read n :: Int) [x,y,z]
handleArgs _ = error "Too few (or many!) arguments."

tossDice :: (RandomGen g) => g -> Int -> Int -> [Int]
tossDice g x y = take x $ randomRs (1, y) g

main = do
  args <- getArgs
  let [x,y,z] = handleArgs args
  sequence $ replicate z (do
    gen <- newStdGen
    let r = tossDice gen x y
    let s = sum r

    putStrLn $ "Result: " ++ show s ++ "\tDice: " ++ show r)