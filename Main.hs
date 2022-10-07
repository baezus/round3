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
    currentDir <- getCurrentDirectory 
    print currentDir 
    createDirectory rp
    let z = aeU [currentDir, rp]
    print z 
    let x = aeU [rp, "github.json"]
    let y = aeU [rp, "default.nix"]
    let b = aeU [rp, "thunk.nix"]
    -- setCurrentDirectory z
    writeFile x n 
    writeFile y n 
    writeFile b n 
    setCurrentDirectory currentDir  
    writeFile "default.nix" n 
    writeFile "shell.nix" n 
    -- check12 <- getCurrentDirectory
    -- print check12 
    -- withCurrentDirectory currentDir $ writeFile x n
    -- writeFile "default.nix" n 
    -- writeFile "shell.nix" n
    -- writeFile "reflex-platform/default.nix" n
    -- writeFile x n
    -- writeFile "reflex-platform/thunk.nix" n

aeU :: [FilePath] -> FilePath
aeU = joinPath

-- create directory
-- set to reflex-platform directory 
-- create those entries
-- pop up to normal directory again
-- create last two entries 
