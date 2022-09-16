Map<String, String> _commands = {
  'start': 'Привет, Серёжа!',
};

class BotCommands {
  String getText(String command) {
    return _commands[command];
  };
}