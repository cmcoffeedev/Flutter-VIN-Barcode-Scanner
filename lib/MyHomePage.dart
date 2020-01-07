import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:scanner_app/MakeDialog.dart';
import 'package:scanner_app/ModelDialog.dart';
import 'package:scanner_app/VinInfo.dart';
import 'Makes.dart';
import 'Models.dart';
import 'package:barcode_scan/barcode_scan.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


//Makes

Future<Makes> fetchMakes(http.Client client) async {
  final response =
  await client.get('https://vpic.nhtsa.dot.gov/api/vehicles/GetMakesForVehicleType/car?format=json');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseMakes, response.body);
}

// A function that converts a response body into a List<Photo>.
Makes parseMakes(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return Makes.fromJson(parsed);
}







//Models

Future<Models> fetchModels(http.Client client, String make) async {
  final response =
  await client.get('https://vpic.nhtsa.dot.gov/api/vehicles/GetModelsForMake/' +
      make +
      '?format=json'
  );

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseModels, response.body);
}

// A function that converts a response body into a List<Photo>.

Models parseModels(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return Models.fromJson(parsed);
}


//Models

Future<VinInfo> fetchVinInfo(http.Client client, String vin) async {
  final response =
  await client.get('https://vpic.nhtsa.dot.gov/api/vehicles/decodevinvaluesextended/' + vin + '?format=json'

  );

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseVinInfo, response.body);
}

// A function that converts a response body into a List<Photo>.

VinInfo parseVinInfo(String responseBody) {
  final parsed = jsonDecode(responseBody);

  return VinInfo.fromJson(parsed);
}







class _MyHomePageState extends State<MyHomePage> {

  TextEditingController vinController = TextEditingController();
  List<String> makeStrings = List<String>();
  List<String> modelStrings = List<String>();
  String makeTitle = "Choose Make";
  String modelTitle = "Choose Model";
  String barcode = "";


  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
      print("barcode is $barcode");
      getVinInfo(barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchMakes(http.Client()).then((value){


      setState(() {
        List<Results> results = value.results;
        for(var i in results){
          print("make is ${i.makeName}");
          makeStrings.add(i.makeName);
        }
        makeStrings.sort();
      });

    });

  }


Future<void> getVinInfo(String vinText){

  fetchVinInfo(http.Client(), vinText).then((VinInfo vinInfo){
    List<VinResults> vinResults = vinInfo.results;

//                   for(var vinResult in vinResults  ){
//                    this.makeTitle = vinResult.make;
//                    this.modelTitle = vinResult.model;
//                   }
    //example vin : 3LN6L2JKXFR605807
    print("vin results length is ${vinResults.length}");
    setState(() {
      if(vinResults.length > 0 ){
        VinResults result = vinResults[0];
        this.makeTitle = result.make;
        this.modelTitle = result.model;
        print("this make is $makeTitle. this model is $modelTitle");
        this.modelStrings.add(this.modelTitle);
      }

    });
  });
  return null;

}


  @override
  Widget build(BuildContext context) {



    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: scan,
                child: new Text("Scan")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: vinController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter a vin"
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                "Get Vin Info"
              ),
              onPressed: (){


                var vinText = vinController.text;
                if(vinText.isNotEmpty){
                  getVinInfo(vinText);

                }

              },

            ),
            Divider(
             height: 3.0,
            ),
            RaisedButton(
              child: Text(makeTitle),
              onPressed: (this.makeStrings.length == 0) ? null : (){


               showDialog(
                   context: context,
                 builder:  (BuildContext context) {
                     return MakeDialog(
                      makeStrings: this.makeStrings,
                       makeCallback: (value){
                        print("make chosen was $value");
                        setState(() {
                         makeTitle = value;
                         fetchModels(http.Client(), makeTitle).then((models){

                           setState(() {
                             List<ModelResults> modelResults = models.results;
                             for(var model in modelResults){
                               print("model is ${model.modelName}");
                               modelStrings.add(model.modelName);
                             }
                             modelStrings.sort();

                           });


                           });
                        });
                       },

                     );

                 }
               );

              },
            ),
            RaisedButton(
              child: Text(
                modelTitle
              ),
              onPressed: (this.modelStrings.length == 0) ? null :(){
                showDialog(
                    context: context,
                  builder: (BuildContext context){
                     return ModelDialog(
                      modelStrings: this.modelStrings,
                       modelCallback: (String model){
                        print("chosen model was $model");

                        setState(() {
                          modelTitle = model;
                        });
                       },
                     );
                  }
                );
              },
            )


          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

