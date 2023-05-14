module concl::AST

/*
 * Define the Abstract Syntax for ConCL
 *
 * - make sure there is an almost one-to-one correspondence with the grammar in Syntax.rsc
 */



data Pack = pack(str id, list[Element] elements);

data Element =
    gameConsole(StorageCapacity storage, Screen display)
  | controlDevice(Color color)
  | includedGame(GameName game);

data StorageCapacity = storageCapacity(int capacity);

data Screen = screen(int diagonal, DisplayType displayType, PixelDensity pixelDensity);

data Color = 
    black() 
  | white() 
  | red() 
  | blue() 
  | gold() 
  | silver() 
  | green();
  
data GameName = 
    noGame() 
  | hedgehogHedwig() 
  | resolutionLink();

data DisplayType = LiquidCrystal() | OrganicLED();

data PixelDensity = HighDef() | FullHighDef() | QuadHighDef() | FiveKHighDef();

 
 
 /* 
 layout Whitespace = [\ \t\n\r]*;

lexical Identifier = [a-z][a-zA-Z0-9]* !>> [a-zA-Z0-9]; // Identifiers

lexical Color = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green"; // Colors

lexical GameTitle = "Hedwig the Hedgehog" | "Link’s Resolution"; // Game titles

lexical DisplayKind = "LED" | "OLED"; // Display types

lexical PixelQuality = "HD" | "Full-HD" | "4K" | "5K"; // Pixel qualities

lexical StorageCapacity = [0-9]+ !>> [0-9]; // Storage capacities

syntax ConsolePack = "console_pack" Identifier "{" ComponentList "}";

syntax ComponentList = Component*;

syntax Component 
  = Console 
  | Controller 
  | Game;

syntax Console 
  = "console" "{" Storage "," Display "}";

syntax Storage
  = "storage:" StorageCapacity "GB";

syntax Display 
  = "display" "{" Diagonal "," Type "," Resolution "}";

syntax Diagonal
  = "diagonal:" StorageCapacity "inch";

syntax Type
  = "type:" DisplayKind;

syntax Resolution
  = "resolution:" PixelQuality;

syntax Controller 
  = "controller" "{" "colour:" Color "}";

syntax Game 
  = "game" "{" "name:" GameTitle "}";
 */