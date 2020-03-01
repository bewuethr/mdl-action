# mdl-action

A GitHub Action to run the Ruby Markdown linter [mdl][1].

[1]: https://github.com/markdownlint/markdownlint

## Inputs

### `style-file`

**Optional** The path to the style file for `mdl` to use. See [Creating
styles][2] to learn about markdownlint style files, and [`RULES.md`][3] for the
individual rules.

[2]: https://github.com/markdownlint/markdownlint/blob/master/docs/creating_styles.md
[3]: https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

## Example usage

```yml
uses: 'bewuethr/mdl-action@v1'
with:
  style-file: '.github/workflows/style.rb'
```
