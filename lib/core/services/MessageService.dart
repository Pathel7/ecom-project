import '../model/Message.dart';

class MessageService {
  static List<Message> messageData = messageListRawData.map((data) => Message.fromJson(data)).toList();
}

var messageListRawData = [
  {
    'is_readed': true,
    'shop_logo_url': 'assets/images/adidaslogo.jpg',
    'message': 'Lorem ipsum sit dolor amet',
    'shop_name': 'Adidas USA',
  },
  {
    'is_readed': true,
    'shop_logo_url': 'assets/images/nikelogo.jpg',
    'message': 'Lorem ipsum sit dolor amet',
    'shop_name': 'Nike USA',
  },
  {
    'is_readed': false,
    'shop_logo_url': 'assets/images/guccilogo.jpg',
    'message': 'Lorem ipsum sit dolor amet',
    'shop_name': 'Gucci',
  },
  {
    'is_readed': true,
    'shop_logo_url': 'assets/images/zaralogo.jpg',
    'message': 'Lorem ipsum sit dolor amet',
    'shop_name': 'Zara USA',
  },
];
