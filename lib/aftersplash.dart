import 'package:flutter/material.dart';
import 'homepage.dart';


class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dino Park',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.amber),
        home: const HomePage(),
        /******* ROUTE DEFINITIONS ******/
        routes: <String, WidgetBuilder>{
           "Invertebrates": (BuildContext context) => new Invertebrates(),
          "Vertebrates": (BuildContext context) => new Vertebrates(),
          "NonFossils": (BuildContext context) => new NonFossils(),
          "FossilPark": (BuildContext context) => new FossilPark(),
          "TimPage": (BuildContext context) => new TimPage(),
        });
  }
}
