import 'dart:convert';

import 'package:json_test/model/user.dart';

void main(){
  String jsonString = '''
  {
    "code": 200,
    "message": "Success",
    "data": [
      {
        "id": 3,
        "createdAt": "26/05/2023",
        "createdBy": "Phong Dep Trai Có 102",
        "title": "Làm thế nào để vay được 20tr?",
        "content": "Giả sử như bây giờ mình cần gấp số tiền 20tr (trả sau 1 tháng), tùy theo mọi người phương pháp nào dưới đây là hợp lý cho mình bây giờ:\nBốc họ (Mình xin phép nói không với phương pháp này)\nTín dụng đen trực tuyến các app (quá nguy hiểm, mình thà chấp nhận phương án đầu tiên)\nVay ngân hàng (giải ngân quá lâu và khó có khả năng hoàn thành hồ sơ)\nVay gia đình (Cố gắng lắm thì được 1/4 số tiền mong muốn)\nVay bạn bè mỗi đứa 2tr (khả năng là 1/2 và rất rắc rối vì quá nhiều chỗ)\nVay 1 người quen 20tr (khả năng thấp)\n\nCác bác thấy phương pháp nào an toàn và hiệu quả nhất, vote giúp mình với.",
        "photos": ["/uploads/2023-05-26/fb4b321e72904fd791c4631a2ad8268f.jpg",
        "/uploads/2023-05-26/9cbd80e3a1e346a49341a3f4daf0f6f5.jpg"],
        "status": 3,
        "isEnable": true,
        "accountPublic": {
          "id": 3,
          "name": "Fuji",
          "avatar": "https://3.pik.vn/1de01716-b3ae-4664-b5dd-b75a334c5857.jpg"
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
