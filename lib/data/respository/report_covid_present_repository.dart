class ReportCovidPresentRepository {

Future<String> getReportCovidPresent(int id) {
  
}
  
}


// class OfflineModeGeneralInFoInspection {
//   final _tableName = TableName.inspectionGeneral;

//   Future<String> getInspectionGeneral(int id) async {
//     var result = await SQLHelper.findAll(_tableName);
//     if (result.isBlank) return null;
//     var localData = result.firstWhere((item) {
//       Map<String, dynamic> jsonInspectionGeneral = jsonDecode(item[_tableName]);
//       return jsonInspectionGeneral['id'] == id;
//     });
//     return localData[_tableName];
//   }

//   Future<void> saveInspectionGeneral(dynamic payload) async {
//     Map<String, dynamic> saveData = {_tableName: payload};

//     var inspectionGeneral = await SQLHelper.findAll(_tableName);
//     if (inspectionGeneral.isBlank) {
//       await SQLHelper.insertData(_tableName, saveData);
//       return;
//     }
//     var localData = inspectionGeneral.firstWhere((item) {
//       Map<String, dynamic> jsonInspectionGeneral = jsonDecode(item[_tableName]);
//       if (jsonInspectionGeneral['id'] == jsonDecode(payload)['id']) {
//         return true;
//       }
//       return false;
//     }, orElse: () => null);
//     if (localData != null) {
//       await SQLHelper.updateItem(localData['id'], _tableName, saveData);
//     } else {
//       await SQLHelper.insertData(_tableName, saveData);
//     }
//   }
// }
