module concl::Check
import concl::AST;
import concl::Syntax;
import IO;

/*
 * -Implement a well-formedness checker for the ConCL language. For this you must use the AST. 
 * - Hint: Map regular CST arguments (e.g., *, +, ?) to lists 
 * - Hint: Map lexical nodes to Rascal primitive types (bool, int, str)
 * - Hint: Use switch to do case distinction with concrete patterns
 */

 /*
 * Create a function called checkHardwareConfiguration(...), which is responsible for calling 
 * all the required functions that check the program's well-formedness as described in the PDF (Section 3.2.) 
 * This function takes as a parameter the program's AST and returns true if the program is well-formed or false otherwise.
 */
 
/*
* Define a function per each verification defined in the PDF (Section 3.2.)
*/

	// 1. Every console pack must have at least one controller and at most four controllers included.
	
	// 2. It is not allowed to have multiple controllers of the same color included in a game pack
	
	// 3. If the game included in a game pack is Link’s Resolution, then this game pack must at least 
	// 	have a green controller included.
	
	// 4. If the game included in a game pack is Hedwig the Hedgehog, it must at least have a
	//	blue controller included, and must not include a green one.
	
	// 5. Display type must be valid. In other words, the type and pixel indicator have to be one
	// 	of the two and four types (one of LED or OLED, one of HD, Full-HD, 4K, 5K)
	
	// 6. The controller is standardized, but has a colour: 
	// 	black, white, red, blue, gold, silver, or green.
	
	// 7. As for game included with the console pack: either no game is included, or a game called
	// Hedwig the Hedgehog, or a game called Link’s Resolution.
		

public bool checkHardwareConfiguration(Console_Pack cp) {
    
    bool is_wf = true;
    
    // Extract the components from the console pack.
    list[Component] components = cp.components;
    
    
    
    // Extract the consoles, controllers, and games from the components.
    list[Console] consoles = [];
    list[Controller] controllers = [];
    list[Game] games = [];
    
    // Iterate over the components and classify them into consoles, controllers, and games.
    for (Component component <- components) {
        switch (component) {
            case Console(Storage storage, Display display): 
                consoles += [component];
            case Controller(Colour colour): 
                controllers += [component];
            case Game(Name name): 
                games += [component];
        }
    }
    
    // Print out list[Component]
    println("Components: ");
    println(components);
    
    // Print out list[Console]
    println("Consoles: ");
    println(consoles);
    
    // Print out list[Controller]
    println("Controllers: ");
    println(controllers);
    
    // Print out list[Game]
    println("Games: ");
    println(games);
    
	return is_wf;
 
}