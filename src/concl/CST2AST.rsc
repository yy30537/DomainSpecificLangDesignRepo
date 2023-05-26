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
 
 
 


public Console_Pack cst2ast(Tree t) {
    switch (t) {
		// TODO
        default:
            throw "Unexpected tree structure, expect Console_Pack";
    }
}

public Component component2ast(Tree t) {
    switch (t) {
		// TODO
        default:
            throw "Unexpected tree structure, expect Component";
    }
}

public Storage storage2ast(Tree t) {
    switch (t) {
		// TODO
    	default:
        	throw "Unexpected tree structure, expect Storage";
    }
}


public Display display2ast(Tree t) {
    switch (t) {
        case (Display) `display { diagonal: <Number diagonal> inch, type: <Type displayType>, resolution: <Resolution resolution> }`:
            // todo: convert diagonal to int?
            return display(123456, type2ast(displayType), resolution2ast(resolution));
        default:
            throw "Unexpected tree structure in display2ast: <t>";
    }
}



public Type type2ast(Tree t) {
    switch (t) {
        case (Type) `LED`:
            return LED();
        case (Type) `OLED`:
            return OLED();
        default:
            throw "Unexpected tree structure, expect Type";
    }
}

public Resolution resolution2ast(Tree t) {
    switch (t) {
        case (Resolution) `HD`:
            return HD();
        case (Resolution) `Full-HD`:
            return FullHD();
        case (Resolution) `4K`:
            return FourK();
        case (Resolution) `5K`:
            return FiveK();
        default:
            throw "Unexpected tree structure, expect Resolution";
    }
}

public Colour colour2ast(Tree t) {
    switch (t) {
        case (Colour) `black`:
            return black();
        case (Colour) `white`:
            return white();
        case (Colour) `red`:
            return red();
        case (Colour) `blue`:
            return blue();
        case (Colour) `gold`:
            return gold();
        case (Colour) `silver`:
            return silver();
        case (Colour) `green`:
            return green();
        default:
            throw "Unexpected tree structure, expect Colour";
    }
}

public Name name2ast(Tree t) {
    switch (t) {
        case (Name) `None`:
            return None();
        case (Name) `Hedwig the Hedgehog`:
            return HedwigtheHedgehog();
        case (Name) `Links Resolution`:
            return LinksResolution();
        default:
            throw "Unexpected tree structure, expect Name";
    }
}