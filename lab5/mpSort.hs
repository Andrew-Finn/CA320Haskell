data Tree a = Null
    | Node a (Tree a) (Tree a)
    deriving (Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode n Null = Node n Null Null
addNode n (Node nb b1 b2)
    | n < nb = Node nb (addNode n b1) b2
    | otherwise = Node nb b1 (addNode n b2)

makeTree :: Ord a => [a] -> Tree a
makeTree [] = Null
makeTree (h:t) = addNode h (makeTree t)

inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node n b1 b2) = (inOrder b1) ++ [n] ++ (inOrder b2)

mpSort :: Ord a => [a] -> [a]
mpSort = inOrder . makeTree
