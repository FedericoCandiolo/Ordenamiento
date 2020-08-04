{- 
El Quick Sort es un algoritmo de ordenacion de complejidad O = (n log(n))
Se toma como pivote el primer elemento de la lista, y se ponen a su izquierda los elementos menores que el pivote. Se ponen a la derecha a los elementos mayores que el pivote. Entonces el pivote ya está ordenado.
Luego se aplica el Quick Sort a las dos nuevas listas, hasta que queden listas vacías.
-}

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort xs = quickSort primera_parte ++ [piv] ++ quickSort segunda_parte
    where
        piv = head xs
        (primera_parte, segunda_parte) = separarPivote piv $ tail xs

separarPivote :: (Ord a) => a -> [a] -> ([a], [a])
separarPivote _ [] = ([], [])
separarPivote p xs
    | p > h = concatenar ([h], []) (separarPivote p t)
    | otherwise = concatenar ([], [h]) (separarPivote p t)
    where
        h = head xs
        t = tail xs

concatenar :: ([a], [a]) -> ([a], [a]) -> ([a], [a])
concatenar (a, b) (c, d) = (a ++ c, b ++ d)

integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"