import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'eventPage.dart';
import 'order/tripSummary.dart';
import 'orderDetails.dart';
import 'landingPage.dart';
import 'tagPage.dart';
import 'Preferences/preference.dart';
import 'order/flightSearch.dart';
import 'order/FlightResults.dart';
import 'login/login.dart';
import 'offers/offers_view.dart';
import 'events/events_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final routes =  <String, WidgetBuilder> {
        LandingPage.tag : (BuildContext context) => new LandingPage(),
        OrderDetails.tag: (BuildContext context) => new OrderDetails(),
        MyPreferences.tag : (BuildContext context) => new MyPreferences(),
        TagPage.tag : (BuildContext context) => new TagPage(),
        EventListPage.tag: (BuildContext context) => new EventListPage(),
        SearchScreen.tag: (BuildContext context) => new SearchScreen(),
        FlightResultsScreen.tag: (BuildContext context) => new FlightResultsScreen(),
        TripSummary.tag: (BuildContext context) => new TripSummary(),
        LoginPage.tag: (BuildContext context) => new LoginPage(),
        MyOffers.tag: (BuildContext context) => new MyOffers(),
        MyEvents.tag: (BuildContext context) => new MyEvents()
        };

  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      title: "Business Travel",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightBlue ,
    ),
    routes: routes,
    home: LandingPage(),
    );
  }
}