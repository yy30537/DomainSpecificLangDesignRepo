module concl::CST2AST

import concl::AST;
import concl::Syntax;
import ParseTree; 

/*
 * Implement a mapping from concrete syntax trees (CSTs) to abstract syntax trees (ASTs)
 * Hint: Use switch to do case distinction with concrete patterns
 * Map regular CST arguments (e.g., *, +, ?) to lists
 * Map lexical nodes to Rascal primitive types (bool, int, str)
 */
 
 // The function matches the structure of the concrete syntax tree as defined in Syntax.rsc module 
 // and converts it into an abstract syntax tree as defined in AST.rsc module.
 
 // assumes that all elements of a component list are valid components. 
 // If this is not the case, further error handling would be needed. 
 // Also, it assumes that the parse tree t is always well-formed. 
 // If there's a chance it might not be, you might want to add additional error handling.
 
 public Pack cst2ast(Tree t) {
 	switch(t.top) {
 		
 		default: fail;
 	}
 }