#!/usr/bin/env nix-script-haskell
#!haskellPackages text directory 

{-# LANGUAGE OverloadedStrings #-}

import System.FilePath
import System.Directory
import Data.List 
import Prelude 

main :: IO ()
main = do
    let refL = "reflex-platform/"
    let n = "/n"
    currentDir <- getCurrentDirectory 
    createDirectory refL
    let jesus = [
        aeU [refL, "github.json"]
      , aeU [refL, "default.nix"]
      , aeU [refL, "thunk.nix"]
    ]
    -- let jesus = [x, y, b]
    let mary = [n, n, n]
    sequence $ zipWith writeFile jesus mary 
    -- let omg = map (:) [x, y, b]
    -- print omg 
    -- writeFile x n 
    -- writeFile y n 
    -- writeFile b n
    setCurrentDirectory currentDir  
    writeFile "default.nix" n 
    writeFile "shell.nix" n 

aeU :: [FilePath] -> FilePath
aeU = joinPath


-- create directory
-- set to reflex-platform directory 
-- create those entries
-- pop up to normal directory again
-- create last two entries 
