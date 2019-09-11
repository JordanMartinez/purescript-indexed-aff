{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "indexed-effect"
, dependencies =
    [ "aff", "prelude", "psci-support", "indexed-effect" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs" ]
}
