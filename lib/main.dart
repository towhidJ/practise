import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        titleSpacing: 3,
        centerTitle: true,
        toolbarOpacity: 3,
        toolbarHeight: 30,
        elevation: 4,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.picture_as_pdf)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
        
      ),
      body: Text("Learn With Towhid"),
      drawer: (),
      endDrawer: (),
      bottomNavigationBar: (),
      floatingActionButton: (
      ),
    );
  }
}
