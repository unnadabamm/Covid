// // read only คือ นอกclass ไม่สามารถ access เข้าไปได้ โดยใช้เป็น get
// // ChangeNotifier จะอยู่ในclass provider จะสามารถกำหนดตัวแปรกี่ตัวให้ provider ก็ได้ แต่ต้องเรียก notifyListeners() ทุกครั้ง เมื่อต้องการอัพเดท UI
// // ChangeNotifier ทำหน้าที่ แจ้งเตือนเมื่อมีการเปลี่ยนแปลงข้อมูล app state
// import 'package:flutter/foundation.dart';

// class ToDo with ChangeNotifier {
//   List<String> tasks = ["aaa", "bbb"];

//   void add(String text) {
//     tasks.add(text);
//     notifyListeners();
//   }

//   void edit(int index, newtext) {
//     tasks[index] = newtext;
//     notifyListeners();
//   }

//   void delete(int index) {
//     tasks.removeAt(index);
//     notifyListeners();
//   }
// }
