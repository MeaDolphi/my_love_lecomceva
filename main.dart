import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {
  var BOT_TOKEN = '5603372057:AAE5-jo98CVGWCmnt3F0IMOA1JW7IjNrcVY';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.start();
  
  teledart.onMessage(keyword: 'Fight for freedom')
    .listen((message) => message.reply('Stand with Hong Kong'));
}