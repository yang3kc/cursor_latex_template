# Introduction

This repo contains the necessary files to use Cursor to edit LaTeX documents.

## Why?

Cursor is a powerful code editor that provides a lot of features out of the box.
It can autocomplete your code and allows you to instruct LLMs to modify your code with natural language.

Since LaTeX documents can be regarded as code and LLMs recognize LaTeX syntax, naturally Cursor can provide a lot of help, such as refining the writing, fixing the formatting, modifying the tables, etc.

## How?

Required:

- Cursor: you might need to subscribe to the paid version to fully leverage the features.
- `.cursor/rules/latex-instructions.mdc`: the configuration file for Cursor. Feel free to modify it to fit your needs. But it's important to instruct Cursor that you are working on a LaTeX project so that it can follow the syntax.
- [LaTeX workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop): a VSCode extension that provides a lot of useful features for LaTeX editing and compiling. Please refer to the official documentation for detailed instructions.
- A TeX distribution on your local computer: this allows you to compile the LaTeX documents. For Mac users, I recommend [MacTeX](https://tug.org/mactex/). For other operating systems, please refer to [TeX Live](https://www.tug.org/texlive/).

Optional:

- `.gitignore`: the git ignore file for LaTeX.

## Work with Overleaf

Overleaf allows you to clone the repository to your local computer using Git.
See the [official documentation](https://www.overleaf.com/learn/how-to/Git_integration) for detailed instructions.

After you make changes, you can commit and push to the remote repository.
It's similar to working with GitHub, but the remote is Overleaf's server in this case.

Note that if others are working on the same project, you might face conflicts.

## I'm not using Cursor

The only setup specific to Cursor is the `.cursor/rules/latex-instructions.mdc` file, so you should be able to migrate the framework to other LLM editors such as VSCode and Windsurf with minor modifications.

# Installing the Cursor rules

Here I make it easy to install the Cursor rules with a `install.sh` script.

You can install this tool to your system's path:

```bash
./install.sh /path/to/your/system/bin
```

Note that you might need to make the script executable:

```bash
chmod +x install.sh
```

After installation, the `init_cursor_latex` command will be available from anywhere in your system.

Simply run the command in your LaTeX project directory:

```bash
init_cursor_latex
```

If you don't want to install the script, you can run it directly without installation:

```bash
bash /path/to/init_cursor_latex.sh
```

Both methods will:
- Copy the necessary Cursor rules from the `.cursor` directory
- Copy the LaTeX-specific `.gitignore` file (if it exists)
- Preserve any existing files in your project

## Explanation

This repo contains the following files:

- `.cursor/rules/latex-instructions.mdc`: Cursor rules for working with LaTeX documents. Feel free to modify them to fit your needs.
- `.gitignore`: Git ignore for LaTeX.
- `init_cursor_latex.sh`: Script to initialize a LaTeX project with Cursor configurations.
- `install.sh`: Installation script to make the tool available system-wide.
