{-
el prompt funciona como calculadora
operadores aritméticos + - * / `div` `mod`
operadores lógicos && || == /= not True False > >= < <=
concatenar cadenas "hola" ++ "mundo"

funciones (sus nombres comienzan con mayúscula)
succ retorna el siguiente número, letra o elemento de una lista
succ 8
succ 'a'
min 9 2
max 9 2
succ (max 8 6)
los parentesis asocian
-}

-- crear funciones: nombre param = retorno de la llamada
sumaDiez x = x + 10
--cargar funciones del archivo en el prompt como en prolog :l haskell.hs
--ej uso  sumaDiez 14
--para recargar :r (reload) o simplemente :l (load)

divisible x y = if (x `mod` y) == 0
    then "son divisibles"
    else "no son divisibles"
--en haskell las condiciones de los if no van entre parentesis.
--los parentesis son para los retornos
--siempre el if debe tener then y else

esMayor x y = if (x > y)
    then "es mayor"
    else "no es mayor"

sumaDiezAMayoresQueVeinte x = if x > 20
    then x + 10
    else x

{-
sumaDiezAMayoresQueVeinte x = if x > 20
	then x + 10
	else "no es mayor"
esto da error ya que haskell tiene tipado estático. no se admite que tenga dos tipos de datos
-}

{-
listas (no se pueden mezclar tipos de datos)
[5, 2, 4, 6]
concatenar listas
[5, 1, 3] ++ [7]
['h', 'o'] ++ ['l', 'a']
: concatena al principio de la lista
59: [1, 2]
'H' : 'ola mundo'
-}

{-
funciones para listas
crear lista
let lista = [6, 7, 8]
referenciar item de la lista con el operador !!
lista !! 0
se admiten listas de listas (pero de un mismo tipo)
lista = [[1, 2], [3, 4]]
y se pueden concatenar los !!
lista !!0 !!1

let lista = [1, 2, 3, 4, 5, 6, 7]
length lista
let listaDoble = [['a','b'], ['c','d']]
length listaDoble

cabeza y cuerpo de la lista como en prolog
head lista
tail lista
y de forma similar para el último:
last list
init lista

reverse lista (retorna la lista al revés)
take 3 lista (retorna primeros 3 ítems de la lista)
drop 3 lista (retorna la lista menos los primeros 3 ítems)

máximo y mínimo de una lista
minimum lista
maximum lista

operaciones con listas
sum lista
product lista

buscar en lista
"cd" `elem` listaDoble
'c' `elem` listaDoble !! 1

rangos
completa lista continuando la serie
let lista = [2, 4 .. 100]
let lista = [100, 95 .. 0]
let lista = ['a', 'c' .. 'z']
let lista = ['a' .. 'z']
let lista = [1 .. 200]

listas infinitas
let lista = [3, 6 ..]

repetir valor de forma infinita
repeat 7

repetir lista de forma infinita
cycle [2,4,6]

replicar tantas veces un valor o lista
replicate 5 60
replicate 2 ['h', 'o']

take 4 (repeat 3)
take 80 (cycle "hola mundo ")

drop 20 (cycle "hola")

listas intencionales (se filtran elementos según condiciones)
estructura de las listas intencionales
let lista = [ lo que vamos a mostrar | [lista de la que filtramos], condiciones]
let lista = [x * 10 | x <- [1 .. 20], x `mod` == 0]
-}

cuentaCifras lista = [ if x < 10 then "una cifra" else "dos cifras" | x <- lista, odd x ]

{-
listas intencionales dobles
let lista = [ x + y | x <- [1 .. 20], y <- [1 .. 100], x < 10, y `mod` 10 == 0]
-}

longitud lista = sum [1 | x <- lista]

mostrarVocales frase = [ letra | letra <- frase, letra `elem` ['a', 'e', 'i', 'o', 'u']]

{-
tuplas (listas que permiten ítems de diferentes tipos de datos)
let dupla = (1, 2)
let dupla = (1, "dos")
let superlista = [[1, 2], [1, 2, 3, 4], [1, 2, 3]]
las listas de duplas tienen que tener todas el mismo formato
let listaDuplas = [(1,"dos"), (3, "cuatro"), (5, "seis")]

let dupla = ("uno", 2)
first, second
fst dupla
snd dupla

combinar listas en duplas
let nombres = ["juan", "alberto", "manolo", "luis"]
let estaturas = [1.78, 1.98, 1.67, 1.80]
zip nombres estaturas
zip [1 ..] nombres

comando tipo de dato :t
:t 4
:t 'a'
:t False
:t head
:t fst

conversores show y read
show convierte cualquier cosa a cadena de texto
show 6.9
show True
show [1, 2, 3]
read convierte a mayor variedad de tipos
el primer valor lo entiende como si fuese del tipo del segundo valor
read "5.6" + 8.1
-}

let triangulos = [ (a, b, c) | c<--[1..10], b<--[1..c], a<--[1..b], a^2 + b^2 == c^2, a+b+c == 24 ]

-- factorial con condicionales
fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1 else n * fact1 (n-1)

-- factorial mediante patrones
fact2 :: Integer -> Integer
fact2 0 = 1
fact2 n = n * fact2(n-1)

-- factorial con predefinidas
fact3 :: Integer -> Integer
fact3 n = product [1..n]

raíces :: Float -> Float -> Float -> (Float, Float)
   raíces a b c
    | disc >= 0 = ((-b + raizDisc) / denom,
                   (-b - raizDisc) / denom)
    | otherwise = error "La ecuación tiene raíces complejas"
      where
         disc = b*b - 4*a*c
         raizDisc = sqrt disc
         denom = 2*a

mcd::Int->Int->Int
   mcd x 0 = x
   mcd x y = mcd y (mod x y)

esPalindromo :: Int -> Bool
esPalindromo n | n < 0 = False
  | otherwise = let s = show n
    in s == (reverse s)

potencia :: Double -> Int -> Double 
potencia b e = if e < 0 then 1 / (potencia b (-e))
  else if e == 0 then 1 
  else let p = potencia b (e `div` 2)
  in if e `mod` 2 == 1 then p * p * b else p * p

