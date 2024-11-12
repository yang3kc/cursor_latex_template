# Introduction

This repo contains the necessary files to use Cursor to edit LaTeX documents.

# How to use

## Copy files script

This repository contains a script named `copy_files.sh` designed to facilitate the copying of specific configuration files from a source directory to the current working directory.

In the target directory (the directory containing the LaTeX files), run

```bash
bash /path/to/copy_files.sh /path/to/source/directory
```

Where `/path/to/source/directory` is the directory of this repository.

## Explanation

This repo contains the following files:

- `.cursorrules`: Cursor rules for working with LaTeX documents. Feel free to modify it to fit your needs.
- `.gitignore`: Git ignore for LaTeX.
- `.vscode`: VSCode settings for LaTeX. It contains the specification for a task that automatically compile the project. It requires the Makefile to work.
- `Makefile`: Makefile for the LaTeX project. You might need to adjust it to fit your pipeline.

# How to set up Cursor as your LaTeX editor

## Why?

Cursor is a powerful code editor that provides a lot of features out of the box.
It can autocomplete your code and allows you to instruct LLMs to modify your code with natural language.

Since LaTeX documents can be regarded as code and LLMs recognize LaTeX syntax, naturally Cursor can provide a lot of help, such as refining the writing, fixing the formatting, modifying the tables, etc.

## How?

Required:

- Cursor: you might need to subscribe to the paid version to fully leverage the features.
- `.cursorrules`: the configuration file for Cursor. Feel free to modify it to fit your needs. But it's important to instruct Cursor that you are working on a LaTeX project so that it can follow the syntax.
- A TeX distribution on your local computer: this allows you to compile the LaTeX documents. For Mac users, I recommend [MacTeX](https://tug.org/mactex/). For other operating systems, please refer to [TeX Live](https://www.tug.org/texlive/).

Highly recommended:

- [LaTeX workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop): a VSCode extension that provides a lot of useful features for LaTeX editing and compiling. Please refer to the official documentation for detailed instructions.

Optional:

- `Makefile`: the Makefile for compiling the LaTeX documents. I included it when I need to customize my compiling pipeline.
- `.vscode/tasks.json`: the task specification for compiling the LaTeX documents. It requires the Makefile to work. You can trigger it in Cursor by pressing `Ctrl+Shift+B`.

## Work with Overleaf

Overleaf allows you to clone the repository to your local computer using Git.
See the [official documentation](https://www.overleaf.com/learn/how-to/Git_integration) for detailed instructions.

After you make changes, you can commit and push to the remote repository.
It's similar to working with GitHub, but the remote is Overleaf's server in this case.

Note that if others are working on the same project, you might face conflicts.

## I'm not using Cursor

The only setup specific to Cursor is the `.cursorrules` file, so the framework should also work for VSCode and GitHub Copilot with minor modifications.