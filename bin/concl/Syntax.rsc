module concl::Syntax

layout Whitespace = [\ \t\n\r]*;

lexical Identifier = [a-z][a-zA-Z0-9]* !>> [a-zA-Z0-9];

lexical Color = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green";

lexical GameName = "None" | "Hedwig the Hedgehog" | "Link’s Resolution";

lexical DisplayType = "LED" | "OLED";

lexical PixelQuality = "HighDef" | "FullHighDef" | "QuadHighDef" | "FiveKHighDef";

lexical StorageCapacity = [0-9]+ !>> [0-9];

syntax ConsolePack = "console_pack" Identifier "{" Component+ "}";

syntax Component = Console | Controller | Game;

syntax Console = "console" "{" "storage:" StorageCapacity "GB" "," Display "}";

syntax Display = "display" "{" "diagonal:" StorageCapacity "inch" "," "type:" DisplayType "," "resolution:" PixelQuality "}";

syntax Controller = "controller" "{" "color:" Color "}";

syntax Game = "game" "{" "name:" GameName "}";
