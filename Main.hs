#!/usr/bin/env nix-script-haskell
#!haskellPackages text directory 
#!buildRoot

{-# LANGUAGE OverloadedStrings #-}
import System.FilePath
import System.Directory
import Prelude 
--import Content 

main :: IO ()
main = do
    currentDir <- getCurrentDirectory 
    let {
      refL = "reflex-platform/"; 
      tH = "thunk.nix"; 
      gH = "github.json"; 
      dF = "default.nix"; 
      sH = "shell.nix";
      aW = "/n"}
    createDirectory refL
    
    withCurrentDirectory refL $ do
      writeFile tH aW
      writeFile gH aW
      writeFile dF a3

    setCurrentDirectory currentDir   
    writeFile dF aW
    writeFile sH aW

-- a1
-- a2
a3 = "import (import ./thunk.nix)"
-- a4 = "(import ./reflex-platform {}).ghc.callCabal2nix "round3" ./. {}"
-- a5