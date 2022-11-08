// To parse this JSON data, do
//
//     final reportCovidPresent = reportCovidPresentFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ReportCovidPresent> reportCovidPresentFromJson(String str) => List<ReportCovidPresent>.from(json.decode(str).map((x) => ReportCovidPresent.fromJson(x)));

String reportCovidPresentToJson(List<ReportCovidPresent> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReportCovidPresent {
    ReportCovidPresent({
        @required this.year,
        @required this.weeknum,
        @required this.newCase,
        @required this.totalCase,
        @required this.newCaseExcludeabroad,
        @required this.totalCaseExcludeabroad,
        @required this.newRecovered,
        @required this.totalRecovered,
        @required this.newDeath,
        @required this.totalDeath,
        @required this.caseForeign,
        @required this.casePrison,
        @required this.caseWalkin,
        @required this.caseNewPrev,
        @required this.caseNewDiff,
        @required this.deathNewPrev,
        @required this.deathNewDiff,
        @required this.updateDate,
    });

    int year;
    int weeknum;
    int newCase;
    int totalCase;
    int newCaseExcludeabroad;
    int totalCaseExcludeabroad;
    int newRecovered;
    int totalRecovered;
    int newDeath;
    int totalDeath;
    int caseForeign;
    int casePrison;
    int caseWalkin;
    int caseNewPrev;
    int caseNewDiff;
    int deathNewPrev;
    int deathNewDiff;
    DateTime updateDate;

    factory ReportCovidPresent.fromJson(Map<String, dynamic> json) => ReportCovidPresent(
        year: json["year"] == null ? null : json["year"],
        weeknum: json["weeknum"] == null ? null : json["weeknum"],
        newCase: json["new_case"] == null ? null : json["new_case"],
        totalCase: json["total_case"] == null ? null : json["total_case"],
        newCaseExcludeabroad: json["new_case_excludeabroad"] == null ? null : json["new_case_excludeabroad"],
        totalCaseExcludeabroad: json["total_case_excludeabroad"] == null ? null : json["total_case_excludeabroad"],
        newRecovered: json["new_recovered"] == null ? null : json["new_recovered"],
        totalRecovered: json["total_recovered"] == null ? null : json["total_recovered"],
        newDeath: json["new_death"] == null ? null : json["new_death"],
        totalDeath: json["total_death"] == null ? null : json["total_death"],
        caseForeign: json["case_foreign"] == null ? null : json["case_foreign"],
        casePrison: json["case_prison"] == null ? null : json["case_prison"],
        caseWalkin: json["case_walkin"] == null ? null : json["case_walkin"],
        caseNewPrev: json["case_new_prev"] == null ? null : json["case_new_prev"],
        caseNewDiff: json["case_new_diff"] == null ? null : json["case_new_diff"],
        deathNewPrev: json["death_new_prev"] == null ? null : json["death_new_prev"],
        deathNewDiff: json["death_new_diff"] == null ? null : json["death_new_diff"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
    );

    Map<String, dynamic> toJson() => {
        "year": year == null ? null : year,
        "weeknum": weeknum == null ? null : weeknum,
        "new_case": newCase == null ? null : newCase,
        "total_case": totalCase == null ? null : totalCase,
        "new_case_excludeabroad": newCaseExcludeabroad == null ? null : newCaseExcludeabroad,
        "total_case_excludeabroad": totalCaseExcludeabroad == null ? null : totalCaseExcludeabroad,
        "new_recovered": newRecovered == null ? null : newRecovered,
        "total_recovered": totalRecovered == null ? null : totalRecovered,
        "new_death": newDeath == null ? null : newDeath,
        "total_death": totalDeath == null ? null : totalDeath,
        "case_foreign": caseForeign == null ? null : caseForeign,
        "case_prison": casePrison == null ? null : casePrison,
        "case_walkin": caseWalkin == null ? null : caseWalkin,
        "case_new_prev": caseNewPrev == null ? null : caseNewPrev,
        "case_new_diff": caseNewDiff == null ? null : caseNewDiff,
        "death_new_prev": deathNewPrev == null ? null : deathNewPrev,
        "death_new_diff": deathNewDiff == null ? null : deathNewDiff,
        "update_date": updateDate == null ? null : updateDate.toIso8601String(),
    };
}
