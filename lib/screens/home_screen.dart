import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  double offset = 0;
  int favValue = 0;
  GlobalKey<ScaffoldState> _drawerKey = new GlobalKey();


  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery
        .of(context)
        .size;
    var size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        backgroundColor: Color(0xFF111111),

        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              padding: EdgeInsets.only(
                  left: 135,
                  top: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Image.asset("assets/images/fitbuddy-.png",
                      alignment: Alignment.center, width: 100,),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),


        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 0),
          child: new Stack(
            children: [
              Positioned(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Text("WHAT ARE YOUR GOALS?",
                      style: TextStyle(
                          fontFamily: "Bebas",
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 16,),

                    Text("Select your purpose here and we will pair\nyou with",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        color: Colors.white,
                        //height: 1.7,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 40,),

                    Container(
                      width: 600,
                      child: IntrinsicHeight(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 0,),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[

                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(

                                    top: 70,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 1, right: 1, top: 10, bottom: 0),
                                      //height: 400,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00c601),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(45.0),
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(0.0),
                                            topRight: Radius.circular(5.0)),

                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.4),
                                              offset: Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 0,
                                                      right: 16,
                                                      top: 75,
                                                    ),
                                                    child: Text(
                                                      "GA",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontFamily: "Bebas",
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 170,
                                                        letterSpacing: 0.0,
                                                        color: Color(0xFF00ac00),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 27,
                                                  bottom: 30,
                                                  //top: 20,
                                                  right: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    ),
                                  ),

                                  Stack(
                                    children: [
                                      Positioned(
                                        //top: 10,
                                        child: SizedBox(
                                          width: 252,
                                          child: Image.asset("assets/images/gains-.png"),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Positioned(
                                    top: 240,
                                    left: 15,
                                    child: SizedBox(

                                      child: Text("GAINS",
                                        style: TextStyle(
                                          fontFamily: "Bebas",
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Stack(
                                overflow: Overflow.visible,
                                children: [

                                  Positioned(

                                    top: 70,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 1, right: 1, top: 10, bottom: 0),
                                      //height: 450,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF490fbc),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(45.0),
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(0.0),
                                            topRight: Radius.circular(5.0)),

                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.4),
                                              offset: Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 0,
                                                      right: 16,
                                                      top: 75,
                                                    ),
                                                    child: Text(
                                                      "W",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontFamily: "Bebas",
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 170,
                                                        letterSpacing: 0.0,
                                                        color: Color(0xFF3e06af),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 27,
                                                  bottom: 30,
                                                  //top: 20,
                                                  right: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    ),
                                  ),


                                  Stack(
                                    children: [
                                      Positioned(
                                        //top: 10,
                                        child: SizedBox(
                                          width: 252,
                                          child: Image.asset("assets/images/weightloss-.png"),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Positioned(
                                    top: 220,
                                    left: 15,
                                    child: SizedBox(

                                      child: Text("WEIGHT\nLOSS",
                                        style: TextStyle(
                                          fontFamily: "Bebas",
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Stack(
                                overflow: Overflow.visible,
                                children: [

                                  Positioned(

                                    top: 70,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 1, right: 1, top: 10, bottom: 0),
                                      //height: 450,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFffc229),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(45.0),
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(0.0),
                                            topRight: Radius.circular(5.0)),

                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.4),
                                              offset: Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 0,
                                                      right: 16,
                                                      top: 75,
                                                    ),
                                                    child: Text(
                                                      "YO",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontFamily: "Bebas",
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 170,
                                                        letterSpacing: 0.0,
                                                        color: Color(0xFFd9a41f),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 27,
                                                  bottom: 30,
                                                  //top: 20,
                                                  right: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    ),
                                  ),


                                  Stack(
                                    children: [
                                      Positioned(
                                        //top: 10,
                                        child: SizedBox(
                                          width: 219,
                                          child: Image.asset("assets/images/yogi-.png"),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Positioned(
                                    top: 240,
                                    left: 15,
                                    child: SizedBox(

                                      child: Text("YOGA",
                                        style: TextStyle(
                                          fontFamily: "Bebas",
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 15,),
                            ],
                          ),
                        ),
                      ),
                    ),




                    SizedBox(height: 30,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Positioned(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: Color(0xFF242424),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 7, 30, 7),
                                    child:
                                    const Text('GAINS', style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: Color(0xFF242424),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 7, 20, 7),
                                    child:
                                    const Text('WEIGHT LOSS', style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: Color(0xFF242424),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 7, 20, 7),
                                    child:
                                    const Text('CARDIO', style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: Color(0xFF242424),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 7, 20, 7),
                                    child:
                                    const Text('PILATES', style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      color: Color(0xFF242424),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 7, 20, 7),
                                    child:
                                    const Text('YOGA', style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.0, top: 10),
                            child: Row(
                              children: [
                                BackButton(
                                  color: Colors.white,
                                ),
                                Text("BACK",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(
                                  width: 140,
                                ),
                                RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: <Color>[
                                          Color(0xFFe9af05),
                                          Color(0xFFf39b05),
                                          Color(0xFFf78d05),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 10, 30, 10.0),
                                    child:
                                    const Text('CONTINUE', style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Bebas",
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
