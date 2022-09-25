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
    print('create');
    this.func = func;
  }
  
  void execute(List args) {
    print ('exexecute');
    func(args);
  }
}

class BotCommands {
  void execute(dynamic msg) {
    String cmd = msg.text;
    
    if (_commands[cmd] != null) {
      for (int i = 0; i < _commands[cmd]!.length; i++) {
        print(i);
        _commands[cmd]![i].execute([msg]);
      }
    else
      msg.reply('Серёжа, данной команды не существует!')
    }
  }
}