module Main where

	data OPERATOR = OP_PLUS | OP_MINUS | OP_MUL | OP_DIV 
		deriving (Show, Eq)

	data SYMBOL = SYB_LP | SYB_RP | SYB_LB | SYB_RB | SYB_COMMA  | SYB_DOT | SYB_COLON 
				| SYB_LE | SYB_LT | SYB_GE | SYB_GT | SYB_ASSIGN | OP_EQU
		deriving (Show, Eq)

	data EOF = EOF_EOF
		deriving (Show, Eq)

	data Token =  TokOp    OPERATOR
				| TokSyb   SYMBOL
				| TokIdent String
				| TokNum   Int
				| TokEOF   EOF
	    deriving (Show, Eq)


	showContent :: Token -> String
	showContent (TokOp    x) = show x
	showContent (TokSyb   x) = show x
	showContent (TokIdent x) = show x
	showContent (TokNum   x) = show x
	showContent (TokEOF   x) = show x

	main::IO()
	main = putStr "Hello World\n"