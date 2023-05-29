module concl::AST

/*
 * Define the Abstract Syntax for ConCL
 *
 * - make sure there is an almost one-to-one correspondence with the grammar in Syntax.rsc
 */

// A Console Pack is defined by an identifier and a list of components
data AConsole_Pack = console_pack(str id, list[AComponent] components);

// A Component can be a Console, Controller or a Game
data AComponent 
	= console(int storage, ADisplay display) // console component has storage and a display
	| controller(AColour colour) // controller has a colour: black, white, red, blue, gold, silver, or green
	| game(AName name); 


// display component is defined by:
// - diagonal size (inches), 
// - type (LED or OLED) 
// - resolution (HD, Full-HD, 4K, 5K).
data ADisplay = display(real diagonal, AType displayType, AResolution resolution);

data AColour = black() | white() | red() | blue() | gold() | silver() | green();

// game included with the console pack: 
// - None
// - Hedwig the Hedgehog
// - Links Resolution
data AName = none() | hedwigtheHedgehog() | linksResolution();

data AType = lED() | oLED();

data AResolution = hD() | fullHD() | fourK() | fiveK();