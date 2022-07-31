import 'package:flutter/material.dart';
void main() {
  runApp(
    //the function runApp() starts the Flutter application
    // Directionality(
    //   textDirection: TextDirection.ltr,
    //   child: Center(
    //     child : MyStatefulWidget(),
    //  ), 
    // ), //Directionality

    MyStatelessWidget()
  );
}


class MyStatelessWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( title: 'Flutter Demo',
    theme: ThemeData( primarySwatch: Colors.blue,
    ),
    home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State <Homepage> createState() =>  HomepageState();
}

class  HomepageState extends State <Homepage> {

  int count = 1;
  @override
  Widget build(BuildContext context) {
    // return Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'); ///return whatever to show at homepage
    return Scaffold(
        appBar: AppBar(
        title: Text("Appbar"),
        ),
        body: Center(
          child:Text("Page $currentIndex is selected."),
          d),
          bottomNavigationBar : BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon (
                  Icons.home_outlined,
                ),
                label: 'Home',
                ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              )
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                ),
                label:'Call',
              )
            ]
          ));
        floatingActionButton:FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              count++;
            });
          },
        )
  }
}
