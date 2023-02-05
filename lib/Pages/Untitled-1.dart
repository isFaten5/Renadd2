import 'package:circlight/Pages/RequestParent.dart';
import 'package:flutter/cupertino.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class ReqForm2 extends StatefulWidget {
  const ReqForm2({Key? key}) : super(key: key);

  @override
  _SssaaWidgetState createState() => _SssaaWidgetState();
}

class _SssaaWidgetState extends State<ReqForm2> {
  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? emailAddressController3;
  TextEditingController OtherController = TextEditingController();
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool onError = false;

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    emailAddressController3 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailAddressController1?.dispose();
    emailAddressController2?.dispose();
    emailAddressController3?.dispose();
    super.dispose();
  }

  final _key = GlobalKey<FormState>();
  RequestParent ReqParent2 = new RequestParent(
      Type: "", Content: "", Date: "", ParentID: "", Title: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 210,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/formbackground.png',
                            width: double.infinity,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.06, 0.74),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                              child: Text(
                                'إنشاء طلب ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.86, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                            child: Text(
                              'Upcoming Lessons',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: _key,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: [
                                Form(
                                    key: _formKey,
                                    child: Container(
                                        padding: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                            top: 20,
                                            bottom: 20),
                                        child: Stack(children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 20),
                                            child: Directionality(
                                                textDirection:
                                                    ui.TextDirection.rtl,
                                                child: TextFormField(
                                                  onChanged: (value) {
                                                    setState(() {
                                                      onError = true;
                                                    });
                                                  },
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14),
                                                  controller:
                                                      emailEditingController,
                                                  decoration: InputDecoration(
                                                    alignLabelWithHint: true,
                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .never,
                                                    contentPadding:
                                                        EdgeInsets.fromLTRB(
                                                            30, 5, 10, 5),
                                                    labelText: 'عنوان الطلب',
                                                    labelStyle: TextStyle(
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 14),
                                                    hintText:
                                                        'أدخل عنوان الطلب',
                                                    hintStyle: TextStyle(
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 14),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade400,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade400,
                                                        width: 0.5,
                                                      ),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade200,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                  ),
                                                  validator: (String? value) {
                                                    print(value);
                                                    if (value == "") {
                                                      setState(() {
                                                        onError = false;
                                                      });
                                                      return null;
                                                    }

                                                    if (value != "null") {
                                                      setState(() {
                                                        onError = true;
                                                      });
                                                      return null;
                                                    }
                                                    return null;
                                                  },
                                                )),
                                          ),
                                          onError
                                              ? Positioned(
                                                  bottom: 0,
                                                  right: 1,
                                                  child: Text(
                                                      textAlign:
                                                          TextAlign.right,
                                                      "أرجو منك تعبئه الحقل الفارغ ",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.red)))
                                              : Positioned(
                                                  bottom: 0,
                                                  right: 1,
                                                  child: Text(
                                                      textAlign:
                                                          TextAlign.right,
                                                      " d",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color.fromARGB(
                                                              255,
                                                              86,
                                                              244,
                                                              54))))
                                        ]))),
                                TextFormField(
                                  controller: emailAddressController3,
                                  decoration: InputDecoration(
                                    labelText: "Example",
                                    labelStyle: TextStyle(color: Colors.black),
                                    errorStyle: TextStyle(color: Colors.red),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value == '') {
                                      return "Error";
                                    }
                                  },
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      if (_formKey.currentState!.validate()) {}
                                      //  print('Button pressed ...');
                                    },
                                    text: 'ارسال',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: const Color(0xff0da6c2),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CreateDialog3(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      title: const Text(' طلب تفويض',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold)),
      content: Text('هل انت متأكد انك تريد تفويض',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              DateTime today = DateTime.now();
              String dateStr =
                  "${today.year}-${today.month}-${today.day} ${today.hour}:${today.minute}";
              // print(dateStr);

              var Type = "value";
              if (Type == "أخرى") {
                Type = OtherController.text;
              }
              /*   ReqParent2.AddRequestParent(_Name.text, Type, Content.text,
                  ParentID, StudentUsername.text, dateStr);*/
              // Navigator.push(context,
              //     CupertinoPageRoute(builder: (context) => ListDelegator()));
              //parentx.DeleteParent(CurrentID);
              Navigator.pop(context);
            },
            child: const Text("موافق",
                style: TextStyle(
                    color: Color.fromARGB(255, 197, 24, 24),
                    fontWeight: FontWeight.bold))),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('إلغاء'),
        ),
      ],
    );
  }
}

Widget CreateDialog(BuildContext context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    title: Text("تسجيل حساب",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(31, 31, 31, 1),
            fontWeight: FontWeight.bold)),
    content: Text(
      "تم تسجبل حسابك بنجاح بإمكانك الدخول لحسابك ",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14),
    ),
    actions: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("موافق",
              style: TextStyle(
                  color: const Color(0xff57d77a),
                  fontWeight: FontWeight.bold))),
    ],
  );
}
