module concl::CST2AST

import concl::AST;
import concl::Syntax;

import String;

/*
 * Implement a mapping from concrete syntax trees (CSTs) to abstract syntax trees (ASTs)
 * Hint: Use switch to do case distinction with concrete patterns
 * Map regular CST arguments (e.g., *, +, ?) to lists
 * Map lexical nodes to Rascal primitive types (bool, int, str)
*/
 
 
 
public AConsole_Pack cst2ast(start[Console_Pack] scp) {
	Console_Pack cp = scp.top;
	AConsole_Pack result = console_pack("<cp.id>", toList(cp.comps, cp.comp));
	return result;
}

list[AComponent] toList(CompAndComma+ comps, Component lastComp) {
    list[AComponent] listAComp = [compAndComma2ast(c) | CompAndComma c <- comps];
    return listAComp + component2ast(lastComp);
}


public AComponent compAndComma2ast(CompAndComma c) {
	switch (c) {
        case (CompAndComma) `<Component comp> ,`:
            return component2ast(comp);
        default:
            throw "Unexpected tree structure in compAndComma: <c>";
    }
}

public AComponent component2ast(Component c) {
    switch (c) {
		case (Component) `console { storage: <Storage st> GB , <Display d> }`:
			return console(toInt("<st>"), display2ast(d));
		case (Component) `controller { colour: <Colour col> }`:
			return controller(colour2ast(col));
		case (Component) `game { name: <Name n> }`:
			return game(name2ast(n));
        default:
            throw "Unexpected tree structure, expect Component";
    }
}


//public AStorage storage2ast(str st) {
//    return storage(toInt(st));
//}


public ADisplay display2ast(Display d) {
    switch (d) {
        case (Display) `display { diagonal: <Number nr> inch , type: <Type t> , resolution: <Resolution r> }`:
            return display(toInt("<nr>"), type2ast(t), resolution2ast(r));
        default:
            throw "Unexpected tree structure in display2ast: <d>";
    }
}



public AType type2ast(Type t) {
    switch (t) {
        case (Type) `LED`:
            return lED();
        case (Type) `OLED`:
            return oLED();
        default:
            throw "Unexpected tree structure, expect Type";
    }
}

public AResolution resolution2ast(Resolution r) {
    switch (r) {
        case (Resolution) `HD`:
            return hD();
        case (Resolution) `Full-HD`:
            return fullHD();
        case (Resolution) `4K`:
            return fourK();
        case (Resolution) `5K`:
            return fiveK();
        default:
            throw "Unexpected tree structure, expect Resolution";
    }
}

public AColour colour2ast(Colour c) {
    switch (c) {
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

public AName name2ast(Name n) {
    switch (n) {
        case (Name) `None`:
            return none();
        case (Name) `Hedwig the Hedgehog`:
            return hedwigtheHedgehog();
        case (Name) `Links Resolution`:
            return linksResolution();
        default:
            throw "Unexpected tree structure, expect Name";
    }
}