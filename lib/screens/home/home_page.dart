import 'package:covid_app/models/weekly/covidweekly.dart';
import 'package:covid_app/providers/covid_daily_provider.dart';
import 'package:covid_app/util/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  DateTime dateTime;
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //บรรทัด  var tasks = context.watch<ToDo>().tasks; ก็เหมือน $watch ของlive data
    // var tasks = context.watch<ToDo>().tasks;
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        backgroundColor: backgroudColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Consumer(
          // builder ต้องการจะให้มันทำอะไร
          builder: ((context, CovidWeeklyProvider provider, Widget child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hello..."),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                  ),
                  itemCount: provider.covidWeekly.length,
                  itemBuilder: ((context, index) {
                    CovidWeekly data = provider.covidWeekly[index];
                    return Card(
                      color: Colors.blue.shade400,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 6, top: 10),
                        title: Text(
                          data.newcase.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          data.namecard,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  })),
            ),
          ],
        );
      })),
    );
  }
}
