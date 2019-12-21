type PDA = (Int,[Int],[Transition])
type Transition = ((Int,String,String),(Int,String))
type Configuration = (Int,String,String)
data Result = Accept | Reject deriving (Show,Eq)

type Stack = String
type Input = String
 

run :: PDA -> String -> Result
run pda input = help startState pda trans "$" input
                where 
                    trans = tran pda startState
                    startState = start pda

start :: PDA -> Int
start (h,_,_) = h 

push :: String -> Stack -> Stack
push _ [] = []
push [] stack = stack
push a stack = a ++ stack

pop :: String -> Stack -> Stack
pop [] stack = stack
pop a (b:stack) | a == [b] = stack
                | otherwise = []

accept :: PDA -> [Int]
accept (_,a,_) = a

tran :: PDA -> Int ->[Transition]
tran (_,_,[]) _ = []
tran (_,_,((state,char,poped),(newState,pushed)):trans) curr 
                    | state == curr = ((state,char,poped),(newState,pushed)) : tran (0,[0],trans) curr
                    | otherwise = tran (0,[0],trans) curr


help :: Int -> PDA -> [Transition] -> Stack -> Input -> Result
help curr pda [] (i:[]) [] 
            | elem curr (accept pda)= Accept
            | otherwise = Reject

help curr pda (((_,char,poped),(newState,pushed)):trans) (i:[]) [] 
            | char == "" && ((help newState pda (tran pda newState) (push pushed (pop poped (i:[]))) []) == Accept ) = Accept
            | otherwise = help curr pda trans (i:[]) []

help curr pda _ _ [] = Reject
help _ _ [] _ _ = Reject
help _ _ _ [] _ = Reject
help curr pda (((_,char,poped),(newState,pushed)):trans) stack (i:input)
                    | ((char == "" ) && ((help newState pda (tran pda newState) (push pushed (pop poped stack)) (i:input)) == Accept )) = Accept
                    | ((char == [i]) && ((help newState pda (tran pda newState) (push pushed (pop poped stack))   input  ) == Accept )) = Accept
                    | otherwise = help curr pda trans stack (i:input) 
