import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

Map<String, List> _commands = {
  'start': [
    BotCommand((args) {
      args[0].reply('Привет, Серёжа! Ты правда думаешь, что я тебе смогу помочь? Мне на тебя не все равно. Я не хотела делать тебе больно...');
    }),
   ]
};

class BotCommand {
  Function func = (){};
  
  BotCommand(Function func) {
    this.func = func;
  }
  
  void execute(List args) {
    func(args);
  }
}

class BotCommands {
  void execute(dynamic msg) {
    String cmd = msg.text.substring(1);
    
    if (_commands[cmd] != null) {
      for (int i = 0; i < _commands[cmd]!.length; i++) {
        _commands[cmd]![i].execute([msg, cmd]);
      }
    } else {
      msg.reply('Серёжа, данной команды не существует.. но я тебя люблю <3');
    }
  }
}