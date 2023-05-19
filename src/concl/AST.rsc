module concl::AST

/*
 * Define the Abstract Syntax for ConCL
 *
 * - make sure there is an almost one-to-one correspondence with the grammar in Syntax.rsc
 */


// A Game Console Pack is defined by an identifier and a list of components
data Pack = pack(str id, list[Component] components);

// A Component can be a Console, Controller or a Game
data Component =
	Console(StorageCapacity storage, Display display) // console component has storage and a display
	| Controller(Color color) // controller has a colour: black, white, red, blue, gold, silver, or green
	| Game(GameName game); 

// storage’s size is defined by an integer value that ranges from 32 until 1024 GB.
data StorageCapacity = storageCapacity(int capacity);

// display component is defined by:
// - diagonal size (inches), 
// - type (LED or OLED) 
// - number of pixels (HD, Full-HD, 4K, 5K).
data Display = display(int diagonal, DisplayType displayType, PixelQuality pixelQuality);

data Color = black() | white() | red() | blue() | gold() | silver() | green();

// game included with the console pack: 
// - no game 
// - Hedwig the Hedgehog
// - Link’s Resolution
data GameName = None() | HedwigTheHedgehog() | LinksResolution();

data DisplayType = LED() | OLED();

data PixelQuality = HighDef() | FullHighDef() | QuadHighDef() | FiveKHighDef();
