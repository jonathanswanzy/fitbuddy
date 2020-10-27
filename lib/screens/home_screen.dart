import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



//import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _selectedIndex = 0;
  final controller = ScrollController();
  double offset = 0;
  int favValue = 0;
  GlobalKey<ScaffoldState> _drawerKey = new GlobalKey();


  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "About Covid-19.",
              offset: offset,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 /* Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),*/
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                       /* SymptomCard(
                          image: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        SymptomCard(
                          image: "assets/images/caugh.png",
                          title: "Caugh",
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "Fever",
                        ),*/


                      ],
                    ),
                  ),
                  SizedBox(height: 120),
                 // Text("Prevention", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  PreventCard(
                    text:
                    "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    image: "assets/images/gains-.png",
                    title: "Wear face mask",
                  ),
                  PreventCard(
                    text:
                    "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    image: "assets/images/wash_hands.png",
                    title: "Wash your hands",
                  ),

                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/

//

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
          padding: EdgeInsets.only(left: 15, right: 15, top: 80, bottom: 0),
          child: new Container(
            //crossAxisAlignment: CrossAxisAlignment.center,
            child: Column(
              children: <Widget>[
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

                SizedBox(height: 15,),

                Expanded(
                  //flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16,),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[

                        Stack(
                          overflow: Overflow.visible,
                          children: [

                            Positioned(

                              top: 30,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 1, right: 1, top: 10, bottom: 0),
                                height: 450,
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
                                    width: 250,
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

                        Stack(
                          overflow: Overflow.visible,
                          children: [

                            Positioned(

                              top: 30,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 1, right: 1, top: 10, bottom: 0),
                                height: 450,
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
                                    width: 250,
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


                        Stack(
                          overflow: Overflow.visible,
                          children: [

                            Positioned(

                              top: 30,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 1, right: 1, top: 10, bottom: 0),
                                height: 450,
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
                                    width: 270,
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



                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                //
               /* Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,


                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.only(left: 2.0, top: 160, bottom: 0),
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
                        //SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),*/
                //

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 2.0, top: 80),
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
        ),
      ),
    );
  }

//use later

/*
  Widget WorkOutButtons() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      //elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,


                  children: <Widget>[

                    SizedBox(height: 10,),
                    RaisedButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xFF242424),
                        ),
                        padding: const EdgeInsets.fromLTRB(20,7,20,7),
                        child:
                        const Text('GAINS', style: TextStyle(
                          fontSize: 22,
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
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xFF242424),
                        ),
                        padding: const EdgeInsets.fromLTRB(20,7,20,7),
                        child:
                        const Text('WEIGHT LOSS', style: TextStyle(
                          fontSize: 22,
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
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xFF242424),
                        ),
                        padding: const EdgeInsets.fromLTRB(20,7,20,7),
                        child:
                        const Text('CARDIO', style: TextStyle(
                          fontSize: 22,
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
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xFF242424),
                        ),
                        padding: const EdgeInsets.fromLTRB(20,7,20,7),
                        child:
                        const Text('PILATES', style: TextStyle(
                          fontSize: 22,
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
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color(0xFF242424),
                        ),
                        padding: const EdgeInsets.fromLTRB(20,7,20,7),
                        child:
                        const Text('YOGA', style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Bebas",
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  SizedBox(
                    height: 140,
                  ),
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
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      padding: const EdgeInsets.fromLTRB(30,10,30,10.0),
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
    ),
  );
*/


/*Widget _badge(int value) {
    return Positioned(
      top: 1,
      right: 1,
      child: Container(
        height: 13,
        width: 13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFe7ad04),
        ),
        child: Center(
          child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }*/


/*
class ExerciseSearch extends SearchDelegate<Exercise> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Color(0xFFe7ad04),
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Color(0xFFe7ad04),
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Expanded(child: ListView());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      color: Color(0xFFe7ad04),
      child: Text(
        query,
        style: TextStyle(color: Colors.white, fontSize: 27),
      ),
    );
  }
}*/


/*
final userThumbnail = new Container(
  margin: EdgeInsets.symmetric(vertical: 16.0),
  alignment: FractionalOffset.centerLeft,
  child: CircleAvatar(
    backgroundImage: AssetImage("assets/images/swanzy-.jpg"),
    backgroundColor: Colors.white,
    maxRadius: 40.0,
  ),
);

final eventCardContent = new Container(
  margin: new EdgeInsets.only(left: 146.0),
  decoration: new BoxDecoration(
    //shape: BoxShape.rectangle,
    color: Colors.transparent,
    //borderRadius: new BorderRadius.circular(8.0),
    image: DecorationImage(
      image: AssetImage("assets/images/gains-.png"),
      fit: BoxFit.fill,
    ),
  ),
);
*/


/*
class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 255,
          width: 240,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(0.0),
                    topRight: Radius.circular(5.0),
                  ),
                  color: Color(0xFF00c601),
                  /*boxShadow: [
                    BoxShadow(
                      offset: Offset(0, ),
                      blurRadius: 24,
                      //color: kShadowColor,
                    ),
                  ],*/
                ),
              ),
              Stack(
                //alignment: Alignment.topLeft,
                children: <Widget>[
                  /*Positioned(
                  top: -56,
                  child: Image.asset(image, width: 230,),

                ),*/

                  Positioned(
                    //width: MediaQuery.of(context).size.width,
                    width: 240,
                    top: -60,
                   // bottom: -10,
                    //top: MediaQuery.of(context).size.width * 0.0,//TRY TO CHANGE THIS **0.30** value to achieve your goal
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/images/gains-.png', scale: 1.5),
                            //SizedBox(height: 50,),
                            /* Text("SMARTID", style: TextStyle(
                                fontSize: 30, color: Colors.white,fontFamily: 'Open Sans',
                                fontWeight: FontWeight.bold),
                            ),*/
                          ]
                      ),
                    ),
                  ),


                  //SizedBox(height: 120,)
                ],
              ),





              Positioned(
                left: 130,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 126,
                  width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /*Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),*/
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset("assets/icons/forward.svg"),
                      ),
                    ],
                  ),
                ),
              ),

              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    top: -30,
                    left: 20,
                    bottom: 1,
                    right: -70,
                    child: Image.asset('assets/images/gains-.png',
                      // scale: 1.5,
                      width: 300,
                      //height: 400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          )
              : BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 6,
            //color: kShadowColor,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 110),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

*/
}