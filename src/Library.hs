module Library where
import PdePreludat

type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length

type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240

objetivoEsDificil :: Objetivo -> Bool
objetivoEsDificil objetivo = gomuGomu objetivo < 100

objetivoEsAccesible :: Objetivo -> Bool
objetivoEsAccesible = entre200y400.normalesConsecutivos.objetivoFocalizado

entre200y400 :: Presion -> Bool
entre200y400 presion = 200<presion && presion<400

objetivoFocalizado :: Objetivo -> Objetivo
objetivoFocalizado objetivo = primeras7Letras objetivo

primeras7Letras :: Objetivo -> Objetivo
primeras7Letras objetivo = take 7 objetivo