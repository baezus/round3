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
      aW = "/n"
    }

    createDirectory refL

    -- Writing reflex-platform directory. 
    withCurrentDirectory refL $ do
      wF dF a1
      wF gH aW
      wF tH aW

    -- Writing root directory.
    wF dF aW
    wF sH aW

wF :: FilePath -> String -> IO ()
wF = writeFile 

a1 = "import (import ./thunk.nix)"
-- a2
-- a3
-- a4 = "(import ./reflex-platform {}).ghc.callCabal2nix "round3" ./. {}"
-- a5

-- If a is dF gH tH or sH, then aW will be a1 a2 a3 a4 a5.
-- Make sure to distinguish between the two default.nix.