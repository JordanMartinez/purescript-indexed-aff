module Effect.Aff.Indexed.Class where

import Prelude

import Data.Indexed (Indexed(..))
import Effect.Aff (Aff)
import Effect.Indexed.Class (class IxMonadEffect)
import Effect.Aff.Class (class MonadAff, liftAff)

class IxMonadEffect m <= IxMonadAff m where
  iliftAff :: forall x a. Aff a -> m x x a

instance ixMonadAffIndexed :: (MonadAff m) => IxMonadAff (Indexed m) where
  iliftAff = Indexed <<< liftAff
