# ActiveAdmin Ace Editor

An Active Admin plugin to use [Ace Editor](https://ace.c9.io/)

## Install

- Update your Gemfile: `gem 'activeadmin_ace_editor'` (and execute _bundle_)
- Add at the end of your ActiveAdmin javascripts (_app/assets/javascripts/active_admin.js_):

```js
#= require activeadmin/ace_editor_input
#= require activeadmin/ace-src-min-noconflict/ace
```

- Use the input with `as: :ace_editor` in Active Admin model conf

Why 2 separated scripts? In this way you can include a different version of _ace editor_ if you like.

## Options

**data-options-mode**: sets the language for the editor. You must also require the corresponding the mode file in ActiveAdmin javascripts

## Examples

```ruby
# ActiveAdmin article form conf:
  form do |f|
    f.inputs 'Article' do
      f.input :title
      f.input :description, as: :ace_editor, input_html: {data: {"options-mode": "json"}}
      f.input :published
    end
    f.actions
  end
```

## Based on

Based on the [Active Admin Quill Editor](https://github.com/blocknotes/activeadmin_quill_editor)

## License

[MIT](LICENSE.txt)
