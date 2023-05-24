# ConCL Language Project

This project is an implementation of the ConCL language, a domain-specific language (DSL) for defining console packs. The language is implemented using the Rascal Metaprogramming Language.

## Project Structure

The project is structured as follows:

- `AST.rsc`: Defines the abstract syntax for the ConCL language.
- `Check.rsc`: Implements a well-formedness checker for the ConCL language.
- `CST2AST.rsc`: Transforms a parse tree into an abstract syntax tree.
- `Parser.rsc`: Defines the parser for the ConCL language.
- `Plugin.rsc`: Defines the main function of the project, which enables the editor's syntax highlighting. It also defines a function to test the functionality of the whole assignment.
- `Syntax.rsc`: Defines the syntax for the ConCL language.

## Getting Started

To get started with this project, you need to have Rascal installed. You can download it from [here](https://www.rascal-mpl.org/start/).

Once you have Rascal installed, you can clone this repository and import it into your Rascal environment.

## Usage

To use this project, you can write ConCL programs and use the functions provided in the `Plugin.rsc` module to parse and check the well-formedness of your programs.

## Testing

This project includes a test suite that demonstrates correct parsing of non-trivial ConCL specifications, as well as programs that contain well-formedness check errors.
