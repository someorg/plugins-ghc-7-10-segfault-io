import System.Plugins.Load
import System.Plugins.Make

import Unsafe.Coerce
import System.IO.Unsafe
import Control.Monad

main = do 
   r 

r= do
   mv <- load "Q.o" ["."] [] "g"
   case mv of
       LoadFailure msg -> print msg
       LoadSuccess _ v -> unsafeCoerce v ::  (IO ()) 



