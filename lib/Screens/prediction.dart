import 'dart:io';

import 'package:agroscan/Screens/ResultScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class predictionScreen extends StatefulWidget {
  predictionScreen({super.key, });

  @override
  State<predictionScreen> createState() => _predictionScreenState();
}

class _predictionScreenState extends State<predictionScreen> {
  @override
  void initState() {
    super.initState();
    loadmodal();
  }

  final imagepicker = ImagePicker();
  late File _imagefile;
  bool loading = false;
  List _pridiction = [];
  bool load = false;
  var confidence;
  late String label;

  loadmodal() async {
    await Tflite.loadModel(
        model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt');
  }

  _imageformgallery() async {
    var image = await imagepicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _imagefile = File(image.path);
      setState(() {
        loading = true;
      });
    }
  }

  predict(File image) async {
    var pridection = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.6,
        imageMean: 250.5,
        imageStd: 250.5);
    print("pridection");
    print(pridection);

    setState(() {
      _pridiction = pridection!;
      label = _pridiction[0]["label"] != null
          ? _pridiction[0]["label"].toString().substring(2).toUpperCase()
          : "Retry";
      confidence = _pridiction[0]["confidence"] != null
          ? (_pridiction[0]["confidence"]*100).toString().substring(0,5)
          : 0;
      load = true;
      load = true;
    });
  }

  _imageformcamara() async {
    var image = await imagepicker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _imagefile = File(image.path);
      setState(() {
        loading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var location;
    // switch(widget.plant){
    //   case 'Tomato' :
    //   location="assets/tomato.jpg";
    // }
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(201, 239, 204, 1),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "AgroFarm",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Predict Disease",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(
              height: 25,
            ),
           
             CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(
               'assets/sugercane.jpeg',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            loading
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(_imagefile),
                      ),
                    ),
                  )
                : Container(),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                _imageformcamara();
              },
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Capture Image",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                _imageformgallery();
              },
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Take Image From Gallary",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                await predict(_imagefile);
                String predicted_Disease = _pridiction[0]["label"] != null
                    ? _pridiction[0]["label"]
                        .toString()
                        .substring(2)
                        .toUpperCase()
                    : "Retry";
                print(predicted_Disease);
              },
              child: Card(
                elevation: 30,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Predict",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            load
                ? Center(
                    child: Text(
                      label,
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                : Text(""),
              load
                ? Center(
                    child: Text(
                      confidence.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                : Text(""),
            SizedBox(
              height: 20,
            ),
            
          ]),
        ),
      ),
    );
  }
}
