{- El treeSort es un algoritmo de búsqueda que ordena los datos de una lista en un árbol binario ordenado. Por la naturaleza del árbol binario (BTree), si este está nivelado, el algoritmo tendrá una complejidad O(n log(n)). Sin embargo, si el árbol estuviera desnivelado, podría existir el caso extremo en que todos los arboles tengan una ramificacion vacía, por lo que se deberían recorrer todos los elementos del árbol para realizar la inserción. En este caso, la complejidad se volveria O(n^2).
Por esta razón, sería conveniente realizar una optimización para que el árbol siempre se encuentre lo más nivelado posible.
-}

data BTree a = EmptyTree | Node (BTree a) a (BTree a)
    deriving(Show)
{- Un arbol binario puede ser un arbol vacio o estar construido por un Nodo-}


treeSort :: (Ord a) => [a] -> [a]
treeSort xs = inOrder $ insertList xs EmptyTree

insertList :: (Ord a) => [a] -> BTree a -> BTree a
insertList [] t = t
insertList (x:xs) t = insertList xs (insert x t)

insert :: (Ord a) => a -> BTree a -> BTree a
insert n EmptyTree = Node EmptyTree n EmptyTree
insert n (Node tl x tr)
    | n < x = Node (insert n tl) x tr
    | otherwise = Node tl x (insert n tr)

inOrder :: BTree a -> [a]
inOrder EmptyTree = []
inOrder (Node tl n tr) = (inOrder tl) ++ [n] ++ (inOrder tr)


integers = [3, 1, -5, 2, -68, 7, 9, 11, -200, 40]
floats = [3.15, 48.3, -98, -1.25, 6, 1.23, 6.55]
letters = "Hello world"