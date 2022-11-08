import 'package:json_annotation/json_annotation.dart';



@JsonSerializable(explicitToJson: true)
class CovidWeekly { 

  final int year;
  final int weeknum;
   final int newcase;
  final int totalcase;
  final int totalrecovered;
  final int totaldeath;
     final String namecard;

  CovidWeekly( {this.year, this.weeknum, this.newcase, this.totalcase,this.namecard,this.totalrecovered,this.totaldeath});

  @override
  String toString() {
    return 'CustomFieldList{year: $year, namecard: $namecard}';
  }


}
