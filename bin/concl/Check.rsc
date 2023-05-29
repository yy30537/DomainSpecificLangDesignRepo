module concl::Check

import concl::AST;

import IO;
/*
 * -Implement a well-formedness checker for the ConCL language. For this you must use the AST. 
 * - Hint: Map regular CST arguments (e.g., *, +, ?) to lists 
 * - Hint: Map lexical nodes to Rascal primitive types (bool, int, str)
 * - Hint: Use switch to do case distinction with concrete patterns
 */

 /*
 * Create a function called checkHardwareConfiguration(...), which is responsible for calling all the required functions that check the program's well-formedness as described in the PDF (Section 3.2.) 
 * This function takes as a parameter the program's AST and returns true if the program is well-formed or false otherwise.
 */
 
/*
* Define a function per each verification defined in the PDF (Section 3.2.)
*/


public bool checkHardwareConfiguration(AConsole_Pack cp) {
	bool result = checkControllerNr(cp.components);
	result = result && checkControllerSameColors(cp.components);
	result = result && checkLinksResolution(cp.components);
	result = result && checkHedwigtheHedgehog(cp.components);
	result = result && checkSameConsoleConfig(cp.components);
	result = result && checkNrGames(cp.components);
	return result;
}

public bool checkControllerNr(list[AComponent] comps){
	int i = 0;
	for(controller(AColour colour) <- comps)  
		i += 1;
	if (i>0 && i<5)
		return true;
	return false;
}

public bool checkControllerSameColors(list[AComponent] comps){
	set[AColour] colours = {};
	for(controller(AColour colour) <- comps) {
		if (colour in colours)
			return false;
		colours += colour;
	}
	return true;
}

public bool checkLinksResolution(list[AComponent] comps){
	set[AColour] colours = {};
	for(game(AName name) <- comps) {
		for(controller(AColour colour) <- comps) 
			colours += colour;
		if (name := linksResolution() && !(green() in colours))
			return false;
	}
	return true;
}

public bool checkHedwigtheHedgehog(list[AComponent] comps){
	set[AColour] colours = {};
	for(game(AName name) <- comps) {
		for(controller(AColour colour) <- comps) 
			colours += colour;
		if ( name := hedwigtheHedgehog() && !(blue() in colours))
			return false;
		if ( name := hedwigtheHedgehog() && green() in colours)
			return false;
	}
	return true;
}

public bool checkSameConsoleConfig(list[AComponent] comps){
	list[tuple[int, ADisplay]] consoles = [];
	for(console(int storage, ADisplay display) <- comps) {
		if (<storage,display> in consoles)
			return false;
		consoles += <storage,display>;
	}
	return true;
}

public bool checkNrGames(list[AComponent] comps){
	int i = 0;
	for(game(AName name) <- comps) 
		i += 1;	
	if (i>1)
		return false;
	return true;
}

