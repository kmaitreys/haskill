import System.Random

main :: IO ()
main = do
    -- Create a random number generator using the current time as the seed
    gen <- newStdGen

    -- Generate a random integer
    let (randomInt, newGen) = random gen :: (Int, StdGen)

    -- Print the random integer
    putStrLn $ "Random Integer: " ++ show randomInt

    -- Generate another random integer using the updated generator
    let (randomInt2, _) = random newGen :: (Int, StdGen)

    -- Print the second random integer
    putStrLn $ "Another Random Integer: " ++ show randomInt2
