{- 
El Quick Sort es un algoritmo de ordenacion de complejidad O = (n log(n))
Se toma como pivote el primer elemento de la lista, y se ponen a su izquierda los elementos menores que el pivote. Se ponen a la derecha a los elementos mayores que el pivote. Entonces el pivote ya está ordenado.
Luego se aplica el Quick Sort a las dos nuevas listas, hasta que queden listas vacías.
-}

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort xs = (quickSort $ filter (< piv) t) ++ [piv] ++ (quickSort $ filter (>= piv) t)
    where
        piv = head xs
        t = tail xs
        
integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"