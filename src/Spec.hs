module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "Objetivo que recibe menos de 100 de presión con GomuGomu es difícil" $ do
      objetivoEsDificil "bolsa de entrenamiento" `shouldBe` True
    it "Objetivo que recibe más de 100 de presión con GomuGomu no es difícil" $ do
      objetivoEsDificil "puf" `shouldBe` False
    it "Objetivo focalizado que recibe entre 200 y 400 de presión con normalesConsecutivos es accesible" $ do
      objetivoEsDificil "bolsa de entrenamiento" `shouldBe` True
    it "Objetivo focalizado que recibe más de 400 de presión con normalesConsecutivos no es accesible" $ do
      objetivoEsDificil "puf" `shouldBe` False

