#!/usr/bin/env nix-script-haskell
#!haskellPackages text directory 

{-# LANGUAGE OverloadedStrings #-}

import System.FilePath
import System.Directory
import Prelude 

main :: IO ()
main = do
    let rp = "reflex-platform/"
    let n = "/n"
    createDirectory rp
    writeFile "default.nix" n 
    writeFile "shell.nix" n
    writeFile "reflex-platform/default.nix" n
    writeFile "reflex-platform/github.json" n
    writeFile "reflex-platform/thunk.nix" n

aeU :: [FilePath] -> FilePath
aeU = joinPath
