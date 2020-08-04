{- 
El Merge Sort es un algoritmo de ordenacion de complejidad O = (n log(n))
Se separa la lista en dos mitades, se le aplica el Merge Sort a cada una de las nuevas listas. Cuando queden listas de 1 o 2 elementos, se efectúa el orden en ese caso base. Luego se unen las dos listas ordenadas (en tiempo lineal). Al terminar todas las instancias de recursión, se tiene la lista entera ordenada.
-}

mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort [x, y]
    | (x > y) = [y, x]
    | otherwise = [x, y]
mergeSort xs = joinOrdered (mergeSort $ fst $ splitHalf xs) (mergeSort $ snd $ splitHalf xs)

joinOrdered :: (Ord a) => [a] -> [a] -> [a]
joinOrdered [] [] = []
joinOrdered xs [] = xs
joinOrdered [] ys = ys
joinOrdered xs ys
    | head xs < head ys = head xs : (joinOrdered (tail xs) ys)
    | otherwise = head ys : (joinOrdered xs (tail ys))

splitHalf :: [a] -> ([a], [a])
splitHalf xs = splitAt ((length xs) `div` 2) xs 

integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"