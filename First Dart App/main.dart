import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyHomePageState createstate() => _MyHomePageState();
}
  Future get_api() async {
    http.Reponse response;
    response = await http.get(url.parse("https://reqres.in/api/users?page=2"));
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Api Call'),
        ),
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery:of(context).size.height,
          child: ListView.builder(
            itemCount: list_response ? .length,
            itemBuilder: (context, index){
              return Padding (
                Padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.bluegrey,
                    borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        list_response?[index]['first_name'] + " " +
                        list_response?[index]['Last_Name'],
                      style: TextStyle(
                        color: Colors.white,
                      )), //TextStyle //Text
                      const SizedBox (
                          height: 20,
                      ),
                      Image.network(list_response?[index]['avatar']),
                      Text(list_response?[index]'email'),
                    ],
                    ), //column
                  ),  //Container
                ), //padding
              ,) 
            },
          ), 
        ),  //ListView.builder
      ), //container
    ); //scaffold
  }
}