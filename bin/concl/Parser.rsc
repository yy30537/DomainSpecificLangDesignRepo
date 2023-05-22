module concl::Parser

import ParseTree;
import concl::Syntax;
import IO;

/*
 * Define the parser for the ConCL language. The name of the function must be parserConCL.
 * This function receives as a parameter the path of the file to parse represented as a loc, and returns a parse tree that represents the parsed program.
 */
 
// takes a file path as a parameter
// returns a parse tree that represents the parsed program
public Tree parserConCL(loc source) {
    return parse(#start[ConsolePack], readFile(source));
}