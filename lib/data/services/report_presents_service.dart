// class BaseService {
//   void getAll() async {
//  const url = 'https://covid19.ddc.moph.go.th/api/Cases/timeline-cases-all';
//  final 

//   }
// }
import 'package:covid_app/data/services/base_service.dart';
import 'package:dio/dio.dart' as Http;
import 'package:covid_app/models/Report/report_covide_present.dart';

class ReportCovidPresentService {
  final BaseServices api = BaseServices();

  Future<Http.Response<List<ReportCovidPresent>>> getReportCovidPresent()async {
    //  return await api.g
  }
  
}