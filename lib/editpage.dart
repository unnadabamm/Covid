// import 'package:covid_app/providers/state.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class EditPage extends StatelessWidget {
//   final int index;
//   final textctrl = TextEditingController();
//   EditPage({Key key, this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // บอกด้วยว่า เป็น index ไหนที่เราต้องการลบในlist tasks
//     textctrl.text = context.read<ToDo>().tasks[index];
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           TextField(
//             controller: textctrl,
//           ),
//           ElevatedButton(
//               onPressed: (() {
//                 //ถ้าเราอยากรู้ว่าค่าอยู่ที่ไหนก็ใช้ read
//                 context.read<ToDo>().edit(index, textctrl.text);
//                 Navigator.pop(context);
//               }),
//               child: Text("Save")),
//           ElevatedButton(
//               onPressed: (() {
//                 //ถ้าเราอยากรู้ว่าค่าอยู่ที่ไหนก็ใช้ read
//                 context.read<ToDo>().delete(index);
//                 Navigator.pop(context);
//               }),
//               child: Text("Delete")),
//         ],
//       ),
//     );
//   }
// }
