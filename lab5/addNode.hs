data Tree a = Null
    | Node a (Tree a) (Tree a)
    deriving (Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode n Null = Node n Null Null
addNode n (Node nb b1 b2)
    | n < nb = Node nb (addNode n b1) b2
    | otherwise = Node nb b1 (addNode n b2)
