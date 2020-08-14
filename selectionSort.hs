{- 
El Selection Sort es un algoritmo de ordenacion de complejidad O = (n^2)
Se busca el elemento mínimo de una lista y se ubica en la primera posición. Luego se realiza lo mismo desde los siguientes elementos, hasta completar la lista.
-}


selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort [x] = [x]
selectionSort xs = minimum : (selectionSort $ removeFromList minimum xs)
    where minimum = getMin xs

removeFromList :: (Eq a) => a -> [a] -> [a]
removeFromList n (x:xs)
    | n == x = xs
    | otherwise = x : (removeFromList n xs)

getMin :: (Ord a) => [a] -> a
getMin [x] = x
getMin (x:xs) = min x (getMin xs)

integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"