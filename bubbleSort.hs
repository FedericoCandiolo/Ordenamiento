{- 
El Bubble Sort es un algoritmo de ordenacion de complejidad O = (n^2)
Se van comparando pares de elementos contiguos de la lista, de inicio a fin. De esta manera queda el elemento máximo al final.
Se repite el proceso sin el último elemento, hasta tener una lista de un elemento (caso base).
-}

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort xs = (bubbleSort $ init partial) ++ [last partial]
    where partial = orderLast xs

orderLast :: (Ord a) => [a] -> [a]
orderLast [] = []
orderLast [x] = [x]
orderLast (x:y:ys)
    | x < y = head minor : (orderLast $ tail minor) 
    | otherwise = head major : (orderLast $ tail major)
        where
            minor = x : y : ys
            major = y : x : ys


integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"