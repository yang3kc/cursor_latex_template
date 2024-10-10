# Introduction

This repo contains the necessary files to use Cursor to edit LaTeX documents.

# Copy files script

This repository contains a script named `copy_files.sh` designed to facilitate the copying of specific configuration files from a source directory to the current working directory.

In the target directory (the directory containing the LaTeX files), run

```bash
bash /path/to/copy_files.sh /path/to/source/directory
```

Where `/path/to/source/directory` is the directory of this repository.

# Explanation

This repo contains the following files:

- `.cursorrules`: Cursor rules for working with LaTeX documents.
- `.gitignore`: Git ignore for LaTeX.
- `.vscode`: VSCode settings for LaTeX. It contains the specification for a tasks that automatically compile the project. It requires the Makefile to work.
- `Makefile`: Makefile for the LaTeX project. You might need to adjust it to fit your pipeline.
