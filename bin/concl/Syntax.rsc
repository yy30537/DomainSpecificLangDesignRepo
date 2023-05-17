module concl::Syntax

layout Whitespace = [\ \t\n\r]*;

lexical Identifier = [a-z][a-zA-Z0-9]* !>> [a-zA-Z0-9];

lexical Color = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green";

lexical GameTitle = "None" | "Hedwig the Hedgehog" | "Link’s Resolution";

lexical DisplayKind = "LED" | "OLED";

lexical PixelQuality = "HD" | "Full-HD" | "4K" | "Ultra-HD";

lexical StorageCapacity = [0-9]+ !>> [0-9];

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
  = "controller" "{" "color:" Color "}";

syntax Game 
  = "game" "{" "name:" GameTitle "}";
