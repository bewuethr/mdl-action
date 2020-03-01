# mdl-action

A GitHub Action to run the Ruby Markdown linter [mdl][1].

[1]: https://github.com/markdownlint/markdownlint

## Inputs

### `style-file`

**Optional** The name of the style file for `mdl` to use.

## Example usage

```yml
uses: bewuethr/mdl-action
with:
  style-file: 'style.rb'
```
