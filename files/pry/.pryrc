Pry.color = true
Pry.editor = 'emacs'

Pry.config.theme = 'zenburn'
Pry.config.theme_options = {:paint_key_as_symbol => true}

Pry::Commands.alias_command '@', 'whereami'

Pry::Commands.block_command('enable-pry', 'Enable the `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end
