#!/usr/bin/env nix-script-haskell
#!haskellPackages text directory 

{-# LANGUAGE OverloadedStrings #-}

import System.FilePath
import System.Directory
import Data.List 
import Prelude 

main :: IO ()
main = do
    currentDir <- getCurrentDirectory 
    print currentDir 
    createDirectory refL
    -- let jesus = [x, y, b]
    let mary = joseph 
    print mary 
    withCurrentDirectory refL $ do 
    sequence $ zipWith writeFile pontius joseph 
    -- let omg = map (:) [x, y, b]
    -- print omg 
    -- writeFile x n 
    -- writeFile y n 
    -- writeFile b n
    setCurrentDirectory currentDir  
    writeFile "default.nix" "in default.nix" 
    writeFile "shell.nix" "in shell.nix"

aeU :: [FilePath] -> FilePath
aeU = joinPath

refL :: FilePath 
refL = "reflex-platform/"

reflRoot :: FilePath 
reflRoot = aeU ["round3/", refL]

pontius :: [String]
pontius = do {
    x <- aeU [refL, "github.json"];
    y <- aeU [refL, "default.nix"];
    z <- aeU [refL, "thunk.nix"];
    return [x, y, z] 
}

jesus :: [FilePath]
jesus = pontius 

joseph :: [String]
joseph = [" ", " ", " "]


-- create directory
-- set to reflex-platform directory 
-- create those entries
-- pop up to normal directory again
-- create last two entries 
