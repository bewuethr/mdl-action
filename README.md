# mdl-action

![Linting](https://github.com/bewuethr/mdl-action/workflows/Linting/badge.svg)
![Move release tags](https://github.com/bewuethr/mdl-action/workflows/Move%20release%20tags/badge.svg)

This action runs the Ruby Markdown linter [mdl][1] on every Markdown file in
the repository.

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

An example style file might look like this:

```rb
all

# Don't enforce line length in code blocks
rule 'MD013', :code_blocks => false

# Allow duplicate titles
exclude_rule 'MD024'

# Allow titles to end in question marks
rule 'MD026', :punctuation => '.,;:!'

# Don't force ordered lists with 1. 1. 1.
rule 'MD029', :style => :ordered

# Allow inline HTML
exclude_rule 'MD033'
```

## Versions

To get the latest version of a major release, the major release without minor
and patch release can be used.

To get the latest version of a minor release, the minor release without the
patch release can be used.

For example: if the latest release is `v1.1.2`,

```yml
uses: 'bewuethr/mdl-action@v1'
```

and

```yml
uses: 'bewuethr/mdl-action@v1.1'
```

and

```yml
uses: 'bewuethr/mdl-action@v1.1.2'
```

will fetch `v1.1.2`. The advantage of using just `@v1` is that minor releases and
patches are included without requiring a change; the advantage of using
`@v1.1.2` is knowing that the action does 100% the same thing every time.

This is done via the [release-tag-tracker][4] action.

[4]: https://github.com/marketplace/actions/release-tag-tracker
