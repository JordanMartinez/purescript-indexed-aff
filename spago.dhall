{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "indexed-effect"
, dependencies =
    [ "aff", "effect", "prelude", "psci-support", "indexed-monad", "indexed-effect" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs" ]
}
