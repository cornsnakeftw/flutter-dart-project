// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//     //the function runApp() starts the Flutter application
//     // Directionality(
//     //   textDirection: TextDirection.ltr,
//     //   child: Center(
//     //     child : MyStatefulWidget(),
//     //  ),
//     // ), //Directionality

//     MyStatelessWidget()
//   );
// }

// class MyStatelessWidget extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp( title: 'Flutter Demo',
//     theme: ThemeData( primarySwatch: Colors.blue,
//     ),
//     home: Homepage(),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   State <Homepage> createState() =>  HomepageState();
// }

// class  HomepageState extends State <Homepage> {

//   int count = 1;
//   @override
//   Widget build(BuildContext context) {
//     // return Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'); ///return whatever to show at homepage
//     return Scaffold(
//         appBar: AppBar(
//         title: Text("Appbar"),
//         ),
//                 body: Center(
//           child:Text("Page $currentIndex is selected."),
//           d),
//           bottomNavigationBar : BottomNavigationBar(
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon (
//                   Icons.home_outlined,
//                 ),
//                 label: 'Home',
//                 ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.search,
//                 ),
//                 label: 'Search',
//               )
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.call,
//                 ),
//                 label:'Call',
//               )
//             ]
//           ));
//         floatingActionButton:FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: (){
//             setState(() {
//               count++;
//             });
//           },
//         )
//   }
// }

//-----------------------------------------------Day 6 Widget------------------------------\\

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'First Item',
      'Second Item',
      'Third Item',
      'Fourth Item'
    ];

    final List<Color> colorCodes = <Color>[
      Colors.blue,
      Colors.red,
      Colors.yellow,
      Colors.green
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
        centerTitle: true,
      ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: colorCodes[0],
            child: Text(entries[0]),
          ),
          Container(
            color: colorCodes[1],
            child: Text(entries[1]),
          ),
          Container(
            color: colorCodes[2],
            child: Text(entries[2]),
          ),
          Container(
            color: colorCodes[3],
            child: Text(entries[3]),
          ),
        ],
      ),

//-----------AspectRatio----------\\

// body: /*const*/ AspectRatio(
// aspectRatio: 100,
//   child: Container(
//     color: Colors.red,
//     child: Text(
//       'You have pushed the button this many times:'),
// ),),

//-------------------------ConstrainedBox--------------------------\\
// body:ConstrainedBox(constraints: const BoxConstraints(maxWidth:500, maxHeight: 500),
//   child: Container(
//    color: Colors.red,
//    height: 300,
//    width: 300,
//   child: const Text(
//   'You have pushed the button this many times:',
// ),),),

//------------------------------SizedBox------------------------------\\
// body: SizedBox(

//     width:500,
//     child: Container(
//     color: Colors.red,
//     child: Text('You have pushed the button this many times'
//     ),
//     ),
// ),

//-----------------Padding-----------\\
// body: Padding(
//   padding: EdgeInsets.all(50),
//   child: Container(
//   color: Colors.red,
//   child: Text(
//      'You have pushed the button this many times:',
//   ),
//   ),
// ),

//-------------TEST----------------\\
// body: Container(
//   alignment: Alignment.center,
//   child: const Text(
//     'You have pushed the button this many times:',
//     ),
//     constraints: const BoxConstraints(maxWidth: 50),
//     ),

      //--            Multiple-Child Widgets                   -\\
      /// - can accept more than one widget as child
      /// - non scrollable: Row, Column
      //-------------------NON-Scrollable --Column--------------------\\
      // body:Column (
      //   mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: <Widget>[
      //   const Text( 'You have pushed', style:TextStyle(fontSize: 10)
      //   ),
      //   const Text(
      //     'the buton this many times:',
      //     ),
      //   Expanded(child: Container(color:Colors.red)),
      // ],
      // ),

//---------------------SCROLLABLE --ListView--------------\\
// body: ListView(
//   children: <Widget>[
//     Container(
//       height: 50,
//       color: Colors.blue,
//       child: const Center(child:Text('First Item')),
//     ),
//     Container(
//       height:50,
//       color: Colors.blue,
//       child: const Center(child: Text('Second Item')),

//     ),
//     Container(
//       height: 50,
//       color: Colors.blue,
//       child: const Center(child: Text('Third Item')),
//       ),
//   ],
// ),

//-----------bring up to scaffold-------\\
// @override
// Widget build(Buildcontext context){
//   final List<String> entries = <String>[
//     'First Item',
//     'Second Item',
//     'Third Item'
//   ];

//   final List<Color>colorCodes = <Color>[
//   Colors.blue,
//   Colors.red,
//   Colors.yellow
//   ];

// }

      ///---------to put under Scaffold-----\\
      // body: ListView.builder(
      //   itemCount: entries.length,
      //   itemBuilder: (BuildContext context, int index){
      //     return Container(
      //       height:50,
      //       color: colorCodes[index],
      //       child:Center(child:Text('${entries[index]}')),
      //   );
      //   },
      //   ),

//--------------------SCROLLABLE  --GridView------\\

// body: GridView.count(
//   primary: false,
//   padding: const EdgeInsets.all(16),
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   crossAxisCount: 2,
//   children: [
//     Container(
//       color: colorCodes[0],
//       child: Text(entries[0]),
//       ),
//     Container(
//       color: colorCodes[1],
//       child: Text(entries[1]),
//     ),
//     Container(
//       color: colorCodes[2],
//       child:Text(entries[2]),
//     ),
//     Container(
//       color: colorCodes[3],
//       child: Text(entries[3]),
//     ),
//   ],
// ),

// @override
// Widget build(BuildContext context){
//   final List<String> entries = <String> [
//     'First Item',
//     'Second Item',
//     'Third Item',
//     'Fourth Item'
//   ];

//   final List<Color> colorCodes=<Color>[
//     Colors.blue,
//     Colors.red,
//     Colors.yellow,
//     Colors.green
//   ];
// }

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
// child: Icon(Icons.remove),
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_phone,
            ),
            label: 'Contact',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}


//---------Themes-------\\
