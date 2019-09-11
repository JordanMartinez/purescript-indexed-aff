module Effect.Aff.Indexed.Class where

import Prelude

import Control.Monad.Indexed (class IxMonad)
import Data.Indexed (Indexed(..))
import Effect.Aff (Aff)
import Effect.Class (class MonadEffect)
import Effect.Aff.Class (class MonadAff, liftAff)

class IxMonadEffect m <= IxMonadAff m where
  iliftAff :: forall x a. Effect a -> m x x a

instance ixMonadAffIndexed :: (MonadAff m) => IxMonadAff (Indexed m) where
  iliftAff = Indexed <<< liftAff
