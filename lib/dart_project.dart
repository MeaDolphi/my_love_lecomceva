import '../src/cmds.dart';

import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {
  var botCommands = BotCommands();
  var BOT_TOKEN = '5603372057:AAE5-jo98CVGWCmnt3F0IMOA1JW7IjNrcVY';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.start();
  
  print('BOT Started');
  
  teledart.onMessage(entityType: 'bot_command')
    .listen((message) {
      var user = message.from!;
      
      if (user.id.toString() == '5071578911') {
        print ('commands - true user');
        
        botCommands.execute(message);
      } else {
        print('commands - false user');
        
        message.reply('Извини, но я только для моего любимого человека.');
      }
      
      print('command');
    });
}