import System.Random
import System.Environment

main = do
  (x:y:_) <- getArgs
  gen <- getStdGen
  let r = take (read x) (randomRs (1, read y :: Int) gen)
  let s = sum r
  putStrLn $ "Result: " ++ show s ++ " Dice: " ++ show r