module concl::CST2AST

import ParseTree;
import concl::AST;
import concl::Syntax;
import IO;

/*
 * Implement a mapping from concrete syntax trees (CSTs) to abstract syntax trees (ASTs)
 * Hint: Use switch to do case distinction with concrete patterns
 * Map regular CST arguments (e.g., *, +, ?) to lists
 * Map lexical nodes to Rascal primitive types (bool, int, str)
*/
 
public Console_Pack cst2ast(Tree pt) {
	println("<pt>");  // print the parse tree
	list[Component] emptylist = [];
	return console_pack("testid", emptylist);
}
