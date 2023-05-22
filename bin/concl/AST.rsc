module concl::AST

/*
 * Define the Abstract Syntax for ConCL
 *
 * - make sure there is an almost one-to-one correspondence with the grammar in Syntax.rsc
 */

// A Console Pack is defined by an identifier and a list of components
data Console_Pack = console_pack(str id, list[Component] components);

// A Component can be a Console, Controller or a Game
data Component =
    Console(Storage storage, Display display) // console component has storage and a display
  | Controller(Colour colour) // controller has a colour: black, white, red, blue, gold, silver, or green
  | Game(Name name); 

// storage’s size is defined by an integer value that ranges from 32 until 1024 GB.
data Storage = storage(int capacity);

// display component is defined by:
// - diagonal size (inches), 
// - type (LED or OLED) 
// - resolution (HD, Full-HD, 4K, 5K).
data Display = display(int diagonal, Type displayType, Resolution resolution);

data Colour = black() | white() | red() | blue() | gold() | silver() | green();

// game included with the console pack: 
// - none
// - Hedwig the Hedgehog
// - Links Resolution
data Name = None() | HedwigtheHedgehog() | LinksResolution();

data Type = LED() | OLED();

data Resolution = HD() | FullHD() | FourK() | FiveK();
