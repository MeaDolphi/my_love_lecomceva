Map<String, List> _commands = {
  'start': [
    BotCommandMe((args) {
      args[0].reply('Привет, Серёжа! Ты правда думаешь, что я тебе смогу помочь? Мне на тебя не все равно. Я не хотела делать тебе больно...');
    }),
   ]
};

class BotCommandMe {
  final func;
  
  BotCommand(func) {
    this.func = func;
  };
  
  void execute({List args}) {
    func(args ?? []);
  };
}

class BotCommands {
  void execute(Message msg, String cmd) {
    if (_commands[cmd] != null) {
      for (int i = 0; i < _commands[cmd].length; i++) {
        _commands[cmd][i].execute(args: [msg]);
      }
    } else {
      msg.reply('Серёжа... Такой команды нет в твоём коде...');
    }
  }
}