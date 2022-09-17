Map<String?, String> _commands = {
  'start': 'Привет, Серёжа! Ты правда думаешь, что я тебе смогу помочь? Мне на тебя не все равно, я не хочу тебе больно делать.',
  null: 'Я потеряла твою команду, родной...',
};

class BotCommands {
  String getText(String? command) {
    print (command);
    return _commands[command?.substring(1)]!;
  }
}