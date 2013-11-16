# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
Pry.color = true

Pry.config.theme = 'zenburn'
Pry.config.coolline_matched_paren ||= "\e[38;5;160;48;5;245m"
Pry.config.coolline_mismatched_paren ||= "\e[48;5;160m"

proc {
  _super = Pry.config.prompt[0]
  Pry.config.prompt[0] = proc { |*args| _super[*args] }
  Pry.config.prompt[1] = proc { |*args|
    (' ' * (Pry.config.prompt[0][*args].size - 2)) + '| '
  }
}.call

Pry::Commands.alias_command '@', 'whereami'

# It's slightly bugged. Let's wait for the better times!
# Pry.auto_resize!
