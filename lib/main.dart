import 'dart:convert';

import 'package:json_test/model/user.dart';

void main(){
  // This is a sample JSON string we might get from an API
  String jsonString = '''
  {
    "code": 200,
    "message": "Success",
    "data": [
      {
        "id": 1,
        "createdAt": "2023-05-27",
        "createdBy": "User1",
        "title": "Title",
        "content": "Content",
        "photos": ["photo1.jpg", "photo2.jpg"],
        "status": 1,
        "isEnable": true,
        "accountPublic": {
          "id": 10,
          "name": "Account 1",
          "avatar": "avatar1.png"
        }
      }
    ]
  }
  ''';

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  User user = User.fromJson(userMap);

  print('Message: ${user.message}');
  print('First Data Content: ${user.data?.first.content}');
  print('First Data Public Account Name: ${user.data?.first.accountPublic?.name}');
}
