# Master's Thesis

This folder is the LaTeX environment for writing and building the thesis, based on
the `uaqthesis` class (University of L'Aquila).

---

## Folder layout

    .
    ├── appendix/          # Appendices (`appendices` environment)
    │
    ├── bibliography/      # Bibliography (references.bib, biblatex + biber)
    │
    ├── build/             # Build output (ignored by git)
    │
    ├── chapters/          # Chapters
    │
    ├── frontmatter/       # Title page, dedication, abstract, acknowledgements
    │
    ├── images/            # Figures (also holds the UnivAQ logo used by the class)
    │
    ├── _vecchi_indici/    # Outlines of the old documents, kept for comparison only (ignored by git)
    │
    ├── main.tex           # Main file
    │
    ├── preamble.tex       # Packages and configuration
    │
    ├── uaqthesis.cls      # UnivAQ thesis class (v4.1, G. Stilo)
    │
    ├── latexmkrc          # latexmk configuration (output goes to build/)
    │
    ├── .vscode/           # LaTeX Workshop configuration
    │
    └── README.md

---

## Conventions

- Each chapter is a file in `chapters/` with a numeric prefix (`CH01_Introduction.tex`,
  `CH02_Related_Work.tex`, ...) and is included from `main.tex` with `\input{chapters/...}`.
- Every included file starts with `%!TEX root = ../main.tex` (needed by LaTeX Workshop
  to build from the open file).
- Figures go in `images/` and are referenced without a path prefix
  (`\includegraphics{name.pdf}`).
- Bibliography entries go in `bibliography/references.bib` and are cited with `\cite{key}`.
- Metric / log-column names are typeset with `\met{name_with_underscores}` (defined in
  `preamble.tex`), which prints them in monospace without escaping underscores.
- The title-page data (title, advisor, ID number, academic year) live in
  `frontmatter/titlepage.tex`; the class options (language, `Lau`/`LaM`, ...) in `main.tex`.

## Changes to the `uaqthesis.cls` class

Compared to the original file:
- the logo is loaded from `images/univaq_coloured.png` instead of `imgs/`;
- a custom string of the previous author was removed from the English colophon.

---

## Usage

The built thesis is available at `build/main.pdf`.

Rebuilding requires a LaTeX distribution (TeX Live) with `latexmk` and `biber`.

To build:
- from the terminal, inside the thesis folder: `latexmk` (clean up with `latexmk -c`)
- or through the LaTeX Workshop extension of VS Code (builds on save)

---
