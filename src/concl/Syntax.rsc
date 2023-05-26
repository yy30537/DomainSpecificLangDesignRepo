module concl::Syntax

layout Whitespace = [\ \t\n\r]*;

// lexical

lexical Identifier = [a-z_][a-zA-Z0-9_]* !>> [a-zA-Z0-9_];


lexical Colour = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green";

lexical Name = "None" | "Hedwig the Hedgehog" | "Links Resolution";

lexical Type = "LED" | "OLED";

lexical Resolution = "HD" | "Full-HD" | "4K" | "5K";

lexical Number = [0-9]+ !>> [0-9];

// syntax

start syntax Console_Pack = "console_pack" Identifier "{" (Component ",")+ Component "}" | "console_pack" Identifier "{" Component+ "}";

syntax Component = Console | Controller | Game;

syntax Console = "console" "{" "storage:" Number "GB" "," Display "}";

syntax Controller = "controller" "{" "colour:" Colour "}";

syntax Game = "game" "{" "name:" Name "}";

syntax Display = "display" "{" "diagonal:" Number "inch" "," "type:" Type "," "resolution:" Resolution "}";
