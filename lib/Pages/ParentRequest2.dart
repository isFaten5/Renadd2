import 'dart:html';

import 'package:circlight/Pages/Nav.dart';
import 'package:circlight/Pages/RequestParent.dart';
import 'package:circlight/Pages/constants.dart';
import 'package:circlight/page/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class ParentReqq extends StatefulWidget {
  const ParentReqq({Key? key}) : super(key: key);

  @override
  _ParentReq createState() => _ParentReq();
}

class _ParentReq extends State<ParentReqq> {
  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? emailAddressController3;
  TextEditingController StudentName = TextEditingController();
  TextEditingController OtherController = TextEditingController();
  TextEditingController _Type = TextEditingController();
  TextEditingController Content = TextEditingController();
  final _unfocusNode = FocusNode();
  bool isWrong = false;
  bool isCorrect = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _Name2 = TextEditingController();
  TextEditingController StudentUsername = TextEditingController();
  TextEditingController _Title = TextEditingController();
  late TextEditingController controller;
  bool Other = false;
  bool onError = false;
  int Index = 0;
  var STID = "";
  late FixedExtentScrollController scrollController;
  late String value = "-";
  var ParentID = "G2tniHX0FfIB7dQWV616";
  final Reason = ["-", "غياب", "ظرف صحي", "أخرى"];
  int _changedNumber = 0;
  int _selectedNumber = 1;
  TextEditingController _Name = TextEditingController();

  List<String> UsernameList = [];
  Future GetStudents() async {
    await FirebaseFirestore.instance.collection("Student").get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            //DelegatorList.add(document["UserName"]);
            UsernameList.add(document["UserName"]);
          }),
        );
  }

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: Reason[Index]);
    scrollController = FixedExtentScrollController(initialItem: Index);
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
    GetStudents();
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // backgroundColor: Color(0x44000000),
        title: Text(
          "",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => HomePage2(
                            TabValue: 0,
                            documentId: "",
                          )));
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.white,
            ),
            color: Color.fromARGB(255, 202, 21, 21),
          ),
        ],
      ),
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
                              ' ',
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
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 0, bottom: 0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Directionality(
                                            textDirection: ui.TextDirection.rtl,
                                            child: TextFormField(
                                              controller: _Name,
                                              onChanged: (value) {
                                                print(
                                                    "kkkkkkkkkkkkkkkkkkkkkkk");
                                                setState(() {
                                                  onError = false;
                                                });
                                              },
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      139, 46, 41, 95),
                                                  fontSize: 14),
                                              decoration: InputDecoration(
                                                prefixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 28),
                                                  child: Icon(
                                                    Icons.title,
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    size: 22,
                                                  ),
                                                ),
                                                alignLabelWithHint: true,
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        30, 5, 10, 5),
                                                labelText: 'عنوان الطلب',
                                                labelStyle: TextStyle(
                                                    color: Color(0xFF2E295F),
                                                    fontSize: 14),
                                                hintText: 'أدخل عنوان الطلب',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 14),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                    color: Color(0xFF2E295F),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                  print("444444444444444");
                                                  setState(() {
                                                    onError = true;
                                                  });
                                                  return null;
                                                }

                                                if (value != null) {
                                                  print("sssssssssssss");
                                                  setState(() {
                                                    onError = false;
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
                                                  textAlign: TextAlign.right,
                                                  "أرجو منك تعبئه الحقل الفارغ ",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.red)))
                                          : Positioned(
                                              bottom: 0,
                                              right: 1,
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                " ",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromARGB(
                                                      255, 86, 244, 54),
                                                ),
                                              ),
                                            )
                                    ],
                                  ),
                                ),
                                ///////////
                                ///
                                ///
                                ///
                                ///

                                ////////
                                ///
                                ///
                                ///
                                /*   ElevatedButton(
                                    child: Text("data"),
                                    onPressed: () async {
                                      final results =
                                          await FilePicker.platform.pickFiles(
                                        allowMultiple: false,
                                        type: FileType.custom,
                                        allowedExtensions: [
                                          'png',
                                          'jpg',
                                          "pdf"
                                        ],
                                      );
                                    }),*/
//

                                ////
                                ///
                                ///
                                ///
                                ///
                                ///
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 0,
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Directionality(
                                            textDirection: ui.TextDirection.rtl,
                                            child: TextFormField(
                                              onChanged: (val) {
                                                ////////////////////////
                                                ///
                                                setState(() {
                                                  onError = false;
                                                });
                                                _formKey.currentState
                                                    ?.validate();

                                                for (var i = 0;
                                                    i < UsernameList.length;
                                                    i++) {
                                                  if (val == UsernameList[i]) {
                                                    /* print("the delegator exsits");
                                            print(DelegatorList[i]);
                                            print(val);*/
                                                    setState(() {
                                                      isWrong = true;
                                                      isCorrect = true;
                                                    });

                                                    _formKey.currentState
                                                        ?.validate();
                                                    /*  print("isWrong:");
                                            print(isWrong);
                                            print("isCorrect:");
                                            print(isCorrect);*/
                                                    break;
                                                  } else {
                                                    ///print("Heeree");
                                                    setState(() {
                                                      isWrong = false;
                                                      isCorrect = true;
                                                    });
                                                  }
                                                }

                                                if (isWrong) {
                                                  // print("ssssssssssssssssssssssss");
                                                  // print(Delegatorsername.text);
                                                  FirebaseFirestore.instance
                                                      .collection("Student")
                                                      .get()
                                                      .then((snapshot) =>
                                                          snapshot.docs.forEach(
                                                              (document) {
                                                            if (StudentUsername
                                                                    .text ==
                                                                document[
                                                                    "UserName"]) {
                                                              StudentName
                                                                ..text =
                                                                    document[
                                                                        "Name"];
                                                              STID = document
                                                                  .reference.id;
                                                              // print(
                                                              //     "++++++++++++++++++++++++++++++++++");
                                                              // print(str);
                                                            }
                                                          }));
                                                }

                                                // اذا فالد بتصير بترو

                                                /* print("wwwwwwwwwwwwwwwwwwww");
                                        print(isWrong);
                                        print(isCorrect);*/
                                              },
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      139, 46, 41, 95),
                                                  fontSize: 14),
                                              controller: StudentUsername,
                                              decoration: InputDecoration(
                                                prefixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 27, left: 5),
                                                  child: Icon(
                                                    Icons.message,
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    size: 15,
                                                  ),
                                                ),
                                                suffixIcon: isCorrect
                                                    ? Align(
                                                        widthFactor: 1.0,
                                                        heightFactor: 1.0,
                                                        child: isWrong
                                                            ? Icon(
                                                                Icons.check,
                                                                size: 18,
                                                                color: const Color(
                                                                    0xff42c98d),
                                                              )
                                                            : Icon(
                                                                Icons.close,
                                                                size: 18,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        225,
                                                                        80,
                                                                        61),
                                                              ),
                                                      )
                                                    : Text(""),
                                                alignLabelWithHint: true,
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        30, 5, 10, 5),
                                                labelText:
                                                    'اسم المستخدم لطالب ',
                                                labelStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    fontSize: 14),
                                                hintText:
                                                    'أدخل اسم المستخدم لطالب ',
                                                hintStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    fontSize: 14),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                  print("444444444444444");
                                                  setState(() {
                                                    onError = true;
                                                  });
                                                  return null;
                                                }

                                                if (value != null) {
                                                  print("sssssssssssss");
                                                  setState(() {
                                                    onError = false;
                                                  });
                                                  return null;
                                                }
                                                return null;
                                              },
                                            )),
                                      ),
                                      onError
                                          ? isWrong
                                              ? Positioned(
                                                  bottom: 0,
                                                  right: 1,
                                                  child: Text(
                                                      textAlign:
                                                          TextAlign.right,
                                                      " اسم المستخدم لطالب غير صحيح",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.red)))
                                              : Positioned(
                                                  bottom: 0,
                                                  right: 1,
                                                  child: Text(
                                                    textAlign: TextAlign.right,
                                                    " ",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromARGB(
                                                          255, 86, 244, 54),
                                                    ),
                                                  ),
                                                )
                                          : SizedBox(
                                              height: 0,
                                            )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, bottom: 0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Directionality(
                                            textDirection: ui.TextDirection.rtl,
                                            child: TextFormField(
                                              minLines: 3,
                                              maxLines: 5,
                                              keyboardType:
                                                  TextInputType.multiline,
                                              textInputAction:
                                                  TextInputAction.next,
                                              onChanged: (value) {
                                                print(
                                                    "kkkkkkkkkkkkkkkkkkkkkkk");
                                                setState(() {
                                                  onError = false;
                                                });
                                              },
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      139, 46, 41, 95),
                                                  fontSize: 14),
                                              controller: Content,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                  top: 30.0,
                                                  bottom: 10,
                                                ),
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(
                                                      defaultPadding),
                                                  child: Icon(
                                                    Icons.message,
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    size: 22,
                                                  ),
                                                ),
                                                alignLabelWithHint: true,
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                labelText: 'محتوى الطلب',
                                                labelStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    fontSize: 14),
                                                hintText: 'أدخل محتوى الطلب',
                                                hintStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    fontSize: 14),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        139, 46, 41, 95),
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
                                                  print("444444444444444");
                                                  setState(() {
                                                    onError = true;
                                                  });
                                                  return null;
                                                }

                                                if (value != null) {
                                                  print("sssssssssssss");
                                                  setState(() {
                                                    onError = false;
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
                                                  textAlign: TextAlign.right,
                                                  "أرجو منك تعبئه الحقل الفارغ ",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.red)))
                                          : Positioned(
                                              bottom: 0,
                                              right: 1,
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                " ",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromARGB(
                                                      255, 86, 244, 54),
                                                ),
                                              ),
                                            )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                      child: FFButtonWidget(
                        onPressed: () {
                          if (_key.currentState != null &&
                              _key.currentState!.validate()) {
                            showCupertinoDialog(
                                context: context, builder: CreateDialog3);
                          }
                          /* Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => Nav(
                          TabValue: 0,
                          documentId: "",
                        ),
                      ));*/
                        },
                        text: 'إرسال',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40,
                          color: const Color(0xff0da6c2),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
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
      title: const Text(' طلب ',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold)),
      content: Text(" هل تريد أرسال الطلب ؟",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              DateTime today = DateTime.now();
              String dateStr =
                  "${today.year}-${today.month}-${today.day} ${today.hour}:${today.minute}";
              // print(dateStr);

              var Type = value;
              if (Type == "أخرى") {
                Type = _Type.text;
              }
              ReqParent2.AddRequestParent(_Name.text, "InProgress",
                  Content.text, ParentID, STID, dateStr, "-");
              Navigator.pop(context);
              /*  ReqParent2.AddRequestParent(_Title,_Name.text, Type,StudentUsername.text,
                 ParentID, dateStr);*/
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
}
