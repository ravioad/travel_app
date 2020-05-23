import 'package:flutter/material.dart';
import 'package:travel_ui/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/images/one.jpg',
              title: "Mohenjo-Daro",
              description:
                  "Mohenjo-daro is an archaeological site in the province of Sindh, Pakistan. Built around 2500 BCE, it was one of the largest settlements of the ancient Indus Valley Civilisation, and one of the world's earliest major cities, contemporaneous with the civilizations of ancient Egypt, Mesopotamia, Minoan Crete, and Norte Chico. Mohenjo-daro was abandoned in the 19th century BCE as the Indus Valley Civilization declined, and the site was not rediscovered until the 1920s."),
          makePage(
              page: 2,
              image: 'assets/images/two.jpg',
              title: "Naran Kaghan",
              description:
                  "Naran Kaghan is famous as a tourist destination, owing to its pleasant weather in peak season every year thousands of tourists rush to explore the valley. It is also the gateway to Gilgit Hunza in Summers by Babusar Pass. Naran Bazaar is very crowded in summers with hotels and restaurants offering their services."),
          makePage(
              page: 3,
              image: 'assets/images/three.jpg',
              title: "Minare Pakistan",
              description:
                  "The tower was designed and supervised by, Nasreddin Murat-Khan a Russian-born Pakistani architect and civil engineer .[2] The foundation stone was laid on 23 March 1960. Construction took eight years, and was completed on 21 October 1968 at an estimated cost of Rs 7,058,000."),
          makePage(
              page: 4,
              image: 'assets/images/four.jpg',
              title: "Quetta Waterfalls",
              description:
                  "Pir Ghaib Waterfalls are waterfalls situated in the Bolan Valley, 70 kilometres from Quetta, in Balochistan, Pakistan. Here a waterfall cascades down rocky mountain side making its way through many streams and ponds among the shady palm trees"),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ],
              begin: Alignment.bottomRight,
              stops: [.3, .9]),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  FadeAnimation(
                    delay: 2,
                    child: Text(page.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        delay: 1),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      delay: 1.5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(23400)',
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      delay: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      delay: 2.3,
                      child: Text("READ MORE",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
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
