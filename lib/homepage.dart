import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
// Define variables and methods that will change here

  @override
  Widget build(BuildContext context) {
    const _homeTextColor = Color(0xFF57150B);
    const _backgroundColor = Color(0xFFFFCC00);
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _homeTextColor,
        title: const Text(
          "RU Fossil Park",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/fossil.jpeg',
            width: 375,
            height: 264,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("FossilPark");
            },
            child: const Text(
              'ABOUT RU FOSSIL PARK',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("TimPage");
            },
            child: const Text(
              'Tims Page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Fossils Found at RU Fossil Park',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: _homeTextColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Invertebrates");
            },
            child: const Text(
              "INVERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Vertebrates");
            },
            child: const Text(
              "VERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("NonFossils");
            },
            child: const Text(
              "NON-FOSSILS",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
        ],
      )),
    );
  }
}
class Vertebrates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const _homeTextColor = Color(0xFF57150B);
    /**** List to be used with ListView ****/
    List items = [
    "Coprolites (Fossilized Poop)",
    "Otodus obliquus (Mackerel shark)",
   "Squalicorax pristodonthus (Crow Shark)",
     "Odontaspis cuspidata (Sand Tiger Shark)",
    "Cretolamna appendiculata (Mackerel shark)",
    "Enchodus ferox (Saber-Toothed Herring)",
    "Fish Fin Spine",
    "Fish Vertebra"
  "Shark Vertebra"];


    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Color(0xFF57150B),
            title: const Text("Ru Fossil Park Fossils",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ) )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Expanded(
                      child: ListView.separated(
                        itemCount: items.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                            title: Text(items.elementAt(index),
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            onTap: () =>  showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Fossil Details'),
                                content: const Text
                                  ("Fecal matter occasionally fossilizes and can provide information on prehistoric diets. At Edelman Fossil Park, multiple types of coprolites are preserved. Shark coprolites are readily identifiable from their spiral shape as a result of the spiral shaped colon of sharks. Crocodile and turtle coprolites are more cylindrical."),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('Close',
                                          style: TextStyle(
                                              color: Color(0xFFFFFCC00)
                                          ))),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, position) {
                          return const Divider(
                            color: _homeTextColor,
                            height: 1.0,
                          );
                        },
                      ))
                ])));
  }
}

class FossilPark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: "https://www.rowan.edu/fossils",
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF57150B),
        title: new Text("RU Fossil Park",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
            )),),
    );

  }
}

class Invertebrates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const _homeTextColor = Color(0xFF57150B);
    /**** List to be used with ListView ****/
    List items = [
    "Cucullaea (Clam)",
   "Crassatellites vadosus (Clam)",
    "Turritella vertebroides (Snail)",
   "Oleneothyris harlani (Brachiopod)",
    "Terebratulina atlantica (Brachiopod)",
    "Pycnodonte dissimilaris (Oysters)",
    "Gryphaeostrea vomeri (Oyster)",
    "Thalassinoides sp. Burrow",
    "Peridonella dichotoma (Sponge)",
   "Flabellum mortoni (Coral)"];


    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Color(0xFF57150B),
            title: const Text("Ru Fossil Park Fossils",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ) )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Expanded(
                      child: ListView.separated(
                        itemCount: items.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                            title: Text(items.elementAt(index),
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            onTap: () =>  showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Fossil Details'),
                                content: const Text
                                  ("This genus of clam is commonly called a false ark clam and spans the Cretaceous/Paleocene extinction at Edelman Fossil Park. The former mine workers here nicknamed these fossils as ësquirrel headsí because of their shape. There are three species preserved at this locality: 1) Cucullaea neglecta - found in the Navesink Formation, 2) Cucullaea vulgaris - found in the lower Hornerstown Formation, and 3) Cucullaea macrodonta - found in upper Hornerstown Formation. Most guests find the common Cucullaea vulgaris. Its species name vulgaris (Latin for \"common\") refers to how frequently this fossil is found. The genus Cucullaea can still be found today and is canned in southeast Asia for human consumption. Like most invertebrate fossils preserved at Edelman Fossil Park, Cucullaea are preserved as internal casts, also known as steinkerns (German for \"stone center \")"),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('Close',
                                          style: TextStyle(
                                              color: Color(0xFFFFFCC00)
                                          ))),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, position) {
                          return const Divider(
                            color: _homeTextColor,
                            height: 1.0,
                          );
                        },
                      ))
                ])));
  }
}

class NonFossils extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const _homeTextColor = Color(0xFF57150B);
    /**** List to be used with ListView ****/
    List items = [
    "Concretions",
    "Iron",
     "Vivianite (Mineral)",
    "Bacterial Precipitate (Bacteria Poop)",
   "Quartz (Mineral)"];


    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Color(0xFF57150B),
            title: const Text("Ru Fossil Park Fossils",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ) )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Expanded(
                      child: ListView.separated(
                        itemCount: items.length,
                        itemBuilder: (context, int index) {
                          return ListTile(
                            title: Text(items.elementAt(index),
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            onTap: () =>  showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Fossil Details'),
                                content: const Text
                                  ("These are rocks that form by small sand and clay grains cementing together over time. Because of this they have a rough and grainy surface texture. The can be any random shape and usually are not symmetrical. Concretions are more common than fossils at the Edelman Fossil Park."),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('Close',
                                          style: TextStyle(
                                              color: Color(0xFFFFFCC00)
                                          ))),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, position) {
                          return const Divider(
                            color: _homeTextColor,
                            height: 1.0,
                          );
                        },
                      ))
                ])));
  }
}

class TimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url:"http://elvis.rowan.edu/~hoodti33",
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF57150B),
        title: new Text("Tim's Website",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
            )),),
    );

  }
}