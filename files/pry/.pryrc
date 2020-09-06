Pry.color = true
Pry.editor = 'emacs'

Pry.config.theme = 'zenburn'
Pry.config.theme_options = {:paint_key_as_symbol => true}
Pry.config.coolline_matched_paren ||= "\e[38;5;160;48;5;245m"
Pry.config.coolline_mismatched_paren ||= "\e[48;5;160m"

Pry::Commands.alias_command '@', 'whereami'

Pry::Commands.block_command('enable-pry', 'Enable the `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end
