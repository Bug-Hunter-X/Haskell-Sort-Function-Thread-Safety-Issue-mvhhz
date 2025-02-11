```haskell
import Data.List (sort)
import Control.Concurrent (MVar, newMVar, takeMVar, putMVar, withMVar)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  mvar <- newMVar xs
  let sorted = withMVar mvar (
    x -> sort x
  )
  print sorted
```