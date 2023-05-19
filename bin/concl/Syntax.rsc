module concl::Syntax

layout Whitespace = [\ \t\n\r]*;

// lexical

lexical Identifier = [a-z][a-zA-Z0-9]* !>> [a-zA-Z0-9];

lexical Color = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green";

lexical GameName = "None" | "HedwigTheHedgehog" | "LinksResolution";

lexical DisplayType = "LED" | "OLED";

lexical PixelQuality = "HighDef" | "FullHighDef" | "QuadHighDef" | "FiveKHighDef";

lexical Number = [0-9]+ !>> [0-9];

// syntax

syntax ConsolePack = "console_pack" Identifier "{" Component+ "}";

syntax Component = Console | Controller | Game;

syntax Console = "console" "{" "storage:" Number "GB" "," Display "}";

syntax Controller = "controller" "{" "color:" Color "}";

syntax Game = "game" "{" "name:" GameName "}";

syntax Display = "display" "{" "diagonal:" Number "inches" "," "type:" DisplayType "," "resolution:" PixelQuality "}";
