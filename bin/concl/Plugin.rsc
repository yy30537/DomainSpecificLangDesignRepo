module concl::Plugin

import ParseTree;
import util::IDE;
import concl::Check;
import concl::Parser;
import concl::CST2AST;

/*
* This function is defined to test the functionality of the whole assignment. It receives a file path as a parameter and returns true if the program satisfies the specification or false otherwise.
* First, it calls the parser (Parser.rsc). Then, it transforms the resulting parse tree of the previous program and calls the function cst2ast (CST2AST.rsc), responsible for transforming a parse tree into an abstract syntax tree.
* Finally, the resulting AST is used to evaluate the well-formedness of the concl program using the check function (Check.rsc).
*/
bool checkWellformedness(loc fil) {
	// Parsing
	&T resource = parserConCL(fil);
	// Transform the parse tree into an abstract syntax tree
	&T ast = cst2ast(resource);
	// Check the well-formedness of the program
	return checkHardwareConfiguration(ast);
}

/*
* This is the main function of the project. This function enables the editor's syntax highlighting.
* After calling this function from the terminal, all files with extension .concl will be parsed using the parser defined in module concl::Parser.
* If there are syntactic errors in the program, no highlighting will be shown in the editor.
*/
void main() {
	registerLanguage("ConCL - DSLD", "concl", Tree(str _, loc path) {
		return parserConCL(path);
  	});
}