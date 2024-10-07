import 'package:flutter/material.dart';

import 'package:dgis_mobile_sdk_map/dgis.dart' as sdk;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sdkContext = sdk.DGis.initialize();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          sdk.MapWidget(
            sdkContext: sdkContext,
            mapOptions: sdk.MapOptions(
              position: const sdk.CameraPosition(
                point: sdk.GeoPoint(
                    latitude: sdk.Latitude(54.87144841401105),
                    longitude: sdk.Longitude(69.14791701954924)),
                zoom: sdk.Zoom(10),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            height: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('Go to Page 1'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Go to Page 2'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Go to Page 3'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Go to Page 4'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Go to Page 5'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Page 1'),
            SizedBox(height: 20),
            Icon(Icons.home, size: 50),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Page 2'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.yellow,
          child: const Text(
            'Page 3 Content',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 4')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 4 - Image Example'),
            SizedBox(height: 20),
            FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 5')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text('Page 5 - List View'),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 1'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Item 2'),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Item 3'),
          ),
        ],
      ),
    );
  }
}
