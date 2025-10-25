# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX template repository designed to configure Cursor for LaTeX document editing. The repository provides installation scripts and Cursor rules to enable LLM-assisted LaTeX editing.

## Key Components

### Cursor Rules for LaTeX

The main configuration is in `.cursor/rules/latex-instructions.mdc`, which instructs AI assistants to:
- Act as a scientific writing assistant for drafting papers
- Focus on clarity, conciseness, and coherence while maintaining technical accuracy
- Use formal but accessible tone
- Follow LaTeX syntax when making changes
- Start a new line for each sentence in LaTeX files
- Write in full sentences and avoid bullet points

This rule applies only to `*.tex` files (`alwaysApply: false`, `globs: *.tex`).

### Installation System

The repository uses a two-script installation system:

1. **install.sh**: Installs `init_cursor_latex` as a system-wide command
   - Creates a symlink in the specified installation path (e.g., `/usr/local/bin`)
   - Makes `init_cursor_latex.sh` executable
   - Usage: `./install.sh /path/to/installation`

2. **init_cursor_latex.sh**: Copies Cursor configuration to LaTeX projects
   - Copies `.cursor/rules/` directory to target project
   - Copies `.gitignore` file for LaTeX projects
   - Preserves existing files (uses `cp -n` flag)
   - Resolves symlinks to find source files
   - Usage: Run in the target LaTeX project directory

## Common Tasks

### Installing the tool system-wide

```bash
chmod +x install.sh
./install.sh /usr/local/bin  # or any directory in your PATH
```

### Setting up a new LaTeX project

```bash
cd /path/to/your/latex/project
init_cursor_latex
```

### Running scripts without installation

```bash
# From anywhere
bash /path/to/this/repo/init_cursor_latex.sh
```

## Integration with Overleaf

This template supports working with Overleaf via Git integration. Users can clone Overleaf projects locally, work with Cursor, and push changes back to Overleaf's remote repository.

## LaTeX Compilation

This repository does not include LaTeX compilation scripts. Users are expected to:
- Use the LaTeX Workshop extension for VSCode/Cursor
- Have a local TeX distribution installed (MacTeX for macOS, TeX Live for others)
- Compile through the LaTeX Workshop extension interface

## Git Workflow

The `.gitignore` file excludes LaTeX intermediate files (`.aux`, `.log`, `.out`, `.toc`, etc.) as well as the `.cursor/` directory and `.gitignore` itself from version control.
