module concl::Syntax

layout Whitespace = [\ \t\n\r]*;

// lexical

lexical Identifier = [a-z][a-zA-Z0-9_]* !>> [a-zA-Z0-9_];

lexical Colour = "black" | "white" | "red" | "blue" | "gold" | "silver" | "green";

lexical Name = "None" | "Hedwig the Hedgehog" | "Links Resolution";

lexical Type = "LED" | "OLED";

lexical Resolution = "HD" | "Full-HD" | "4K" | "5K";

lexical Real = [0-9]*"."[0-9]+ | [0-9]+;

lexical Storage = [1][0][2][0-4] > [1-9][0-9][0-9] >  [4-9][0-9] > [3][2-9];


start syntax Console_Pack = "console_pack" Identifier id "{" (Component ",")+ comps Component comp "}";

//syntax CompAndComma = Component comp ",";

syntax Component = Console | Controller | Game;

syntax Console = "console" "{" "storage:" Storage st "GB" "," Display d "}";

syntax Controller = "controller" "{" "colour:" Colour col "}";

syntax Game = "game" "{" "name:" Name n "}";

syntax Display = "display" "{" "diagonal:" Real nr "inch" "," "type:" Type t "," "resolution:" Resolution r "}";