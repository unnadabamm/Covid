import 'package:covid_app/providers/covid_daily_provider.dart';
import 'package:covid_app/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// provider ทำหน้าที่ส่งต่อ ข้อมูลไปใช้งานในหน้าต่างๆ ของ app การกำหนด provider จะกำหนดไว้ส่วนบนสุดของ app หรือ
// ส่วนบนสุดของส่วนที่จะใช้งานข้อมูล

void main(List<String> args) {
  runApp(
    // MultiProvider เอาไว้เชื่อมระหว่างหน้า main.dart กับตัวprovider
    MultiProvider(
      //ให้เราเอาprovider จากโฟล มาใส่ ว่าเรามีกี่ตัวก็ใส่ไป
      providers: [
    //รอรับค่าจาก provider ที่เราส่งมา
    ChangeNotifierProvider(create: ((context) {
      return CovidWeeklyProvider();
    })),
    //   ChangeNotifierProvider(create: ((context) {
    //   return CovidWeeklyProvider();
    // })),
    //   ChangeNotifierProvider(create: ((context) {
    //   return CovidWeeklyProvider();
    // })),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
