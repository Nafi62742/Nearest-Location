import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
    with TickerProviderStateMixin {


  final TextEditingController xController = TextEditingController();
  final TextEditingController yController = TextEditingController();
  FocusNode xFocusNode = FocusNode();
  FocusNode yFocusNode = FocusNode();
  var areaMap = <double, List<double>>{
    0: [3.1416,3.1268],
    1: [4.1416,2.1268],
    2: [3.1416,5.1268],
    3: [3.1416,6.1268],
  };
  var areaName = <String, double>{
    "Asadgate": 0 ,
    "Mohmodpur": 1 ,
    "Farmgate":2,
    "Lalmatia": 3 ,
  };
  DateTime firstIndexDate = DateTime.now();

  String firstIndexFormat = '2023-11-20';
  int len = 0;

  List<DateTime> dateTimeFound = [];

  List<String> dateList = [];
  List<DateTime> dateTimeList = [];
  int dateIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Closest Area",
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   controller: xController,
              //   focusNode: xFocusNode,
              //   decoration: const InputDecoration(
              //     hintText: 'name@gmail.com',
              //   ),
              //
              // ),
              TextField(

                keyboardType: TextInputType.emailAddress,
                
                controller: yController,
                focusNode: yFocusNode,
                decoration: const InputDecoration(
                  hintText: 'name@gmail.com',
                ),

              ),
              IconButton(
                  onPressed: () {
                    {
                    }
                  },
                  icon: const Icon(Icons.settings,
                    color: Colors.green,
                    size: 30.0,
                  )),
            ],
          ),
          Expanded(
              child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            itemCount: areaMap.length,
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08,
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  child: ListTile(
                    leading: Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.amber),
                    ),
                    title: Text(areaMap[index].toString()),
                    // trailing: Text(areaName[index].toString()),
                  ));
            },
          )),
        ],
      ),
    );
  }
}
