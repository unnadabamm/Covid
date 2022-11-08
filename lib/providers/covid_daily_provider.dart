import 'package:covid_app/models/weekly/covidweekly.dart';
import 'package:flutter/foundation.dart';

class CovidWeeklyProvider with ChangeNotifier {
  List<CovidWeekly> covidWeekly = [
    CovidWeekly(
        year: 2022,
        weeknum: 43,
        newcase: 2551,
        totalcase: 2551,
        namecard: "New Case",
        totaldeath: 32955,
        totalrecovered: 4647275),
    CovidWeekly(
        year: 2022,
        weeknum: 43,
        newcase: 4534,
        totalcase: 2551,
        namecard: "Total recovered",
        totaldeath: 32955,
        totalrecovered: 4647275),
    CovidWeekly(
        year: 2022,
        weeknum: 43,
        newcase: 2700,
        totalcase: 2551,
        namecard: "Total Death",
        totaldeath: 32955,
        totalrecovered: 4647275),
    CovidWeekly(
        year: 2022,
        weeknum: 43,
        newcase: 2500,
        totalcase: 2551,
        namecard: "Total Excludeabroad",
        totaldeath: 32955,
        totalrecovered: 4394323),
  ];

  //ดึงข้อมูล
  List<CovidWeekly> getcovidWeekly() {
    return covidWeekly;
  }

  // add ข้อมูลลงไป
  addcovidweekly(CovidWeekly weekly) {
    covidWeekly.add(weekly);
  }
}
