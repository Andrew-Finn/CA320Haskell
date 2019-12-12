type PDA = (Int,[Int],[Transition])
type Transition = ((Int,String,String),(Int,String))
type Configuration = (Int,String,String)
data Result = Accept | Reject deriving Show

run :: PDA -> String -> Result





pal = (1,[2],[((1,"a",""),(1,"a")),

              ((1,"b",""),(1,"b")),

              ((1,"a",""),(2,"")),

              ((1,"b",""),(2,"")),

              ((1,"",""),(2,"")),

              ((2,"a","a"),(2,"")),

              ((2,"b","b"),(2,""))])
