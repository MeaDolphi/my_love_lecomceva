Map<String?, String> _commands = {
  default: 'Я потеряла твою команду, родной',
  'start': 'Привет, Серёжа!',
};

class BotCommands {
  String getText(String? command) {
    return _commands[command];
  }
}