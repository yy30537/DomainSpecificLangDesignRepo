module concl::Parser

import ParseTree;
import concl::Syntax;
import IO; // to use readFile 


/*
 * Define the parser for the ConCL language. The name of the function must be parserConCL.
 * This function receives as a parameter the path of the file to parse represented as a loc, and returns a parse tree that represents the parsed program.
 */
 


// takes the start symbol of the grammar and a string to parse, and returns a parse tree
// #start[...] specify the start symbol 
public Tree parserConCL(loc source) {
    return parse(#start[ConsolePack], readFile(source));
}