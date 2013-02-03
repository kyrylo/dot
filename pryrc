# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
Pry.color = true

Pry.config.theme = 'zenburn'
Pry.config.coolline_matched_paren ||= "\e[38;5;160;48;5;245m"
Pry.config.coolline_mismatched_paren ||= "\e[48;5;160m"

Pry::Commands.alias_command '@', 'whereami'

Pry.auto_resize!
