import 'package:circlight/Pages/RequestParent.dart';
import 'package:flutter/cupertino.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class SWidget extends StatefulWidget {
  const SWidget({Key? key}) : super(key: key);

  @override
  _SssaaWidgetState createState() => _SssaaWidgetState();
}

class _SssaaWidgetState extends State<SWidget> {
  TextEditingController emailEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool onError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Stack(children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            style: TextStyle(color: Colors.amber, fontSize: 14),
                            controller: emailEditingController,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.fromLTRB(30, 5, 10, 5),
                              labelText: "Enter Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 14),
                            ),
                            validator: (String? value) {
                              setState(() {
                                onError = false;
                              });
                              if (value!.isEmpty) {
                                setState(() {
                                  onError = true;
                                });
                                return null;
                              }
                              return null;
                            },
                          )),
                      onError
                          ? Positioned(
                              bottom: 0,
                              child: Text('this is an error msg',
                                  style: TextStyle(color: Colors.red)))
                          : Container()
                    ]))),
            MaterialButton(
              key: Key('login'),
              minWidth: 150,
              height: 50,
              color: Colors.amber,
              child: Text('login'),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
