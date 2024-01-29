import 'package:flutter/material.dart';

class DetailesPages extends StatefulWidget {
  static const String id="details_page";

  final String? userId;

  const DetailesPages({super.key,this.userId});

  @override
  State<DetailesPages> createState() => _DetailesPagesState();
}

class _DetailesPagesState extends State<DetailesPages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Welcome-${widget.userId}");
  }
  _backToFinish(){
    Map map={"data": "Works fine"};
    Navigator.of(context).pop(map);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          child: Text("Welcome-${widget.userId}"),
          onPressed: (){
          _backToFinish();
          },
        ),
      ),
    );
  }
}
