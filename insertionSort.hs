{- 
El Insertion Sort es un algoritmo de ordenacion de complejidad O = (n^2)
Se parece a la forma en la que uno ordena cartas. Uno va tomando la primera parte de la lista, de un elemento hasta la lista entera.
Se toma el último elemento de la selección y se va moviendo hacia el inicio hasta encontrar un elemento menor al pivote.
-}

insertionSort :: (Ord a) => [a] -> [a]
insertionSort xs = insertionSort2 1 xs

insertionSort2 :: (Ord a) => Int -> [a] -> [a]
insertionSort2 _ [] = []
insertionSort2 _ [x] = [x]
insertionSort2 n xs
    | n > length xs = xs
    | otherwise = insertionSort2 (n+1) ((insert primera_parte) ++ segunda_parte)
    where
        (primera_parte, segunda_parte) = splitAt n xs

insert :: (Ord a) => [a] -> [a]
insert [] = []
insert [x] = [x]
insert xs
    | penult < ult = xs
    | otherwise = (insert (inicio ++ [ult])) ++ [penult]
    where
        ult = last xs
        penult = last $ init xs
        inicio = init $ init xs


integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"