Map<String?, String> _commands = {
  'start': 'Привет, Серёжа!',
  null: 'Я потеряла твою команду, родной',
};

class BotCommands {
  String getText(String? command) {
    return _commands[command];
  }
}