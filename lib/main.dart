import 'package:flutter/material.dart';
import 'Authorization.dart';
import 'modul/DataBase.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Приложение',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor:const  Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const AuthorizationRoute (),
    );
  }
}


//Главный экран с товарами
class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Text('Главный экран'),
        ),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(productList[index].phoneImages, 
            width: 200, 
            height: 200
            ), 
            title: Text(
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              productList[index].phoneNames
              ), 
            subtitle: Text(
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              productList[index].price
              ), 
            onTap: () {
             Navigator.push( 
          context,
          MaterialPageRoute(
            builder: (context) => PhoneDetailScreen(
              name: productList[index].phoneNames,
              description: productList[index].phoneDescriptions,
              imagePath: productList[index].phoneImages,
              price: productList[index].price,
            ),
          ),
        );
            },
          );
        },
      ),
    );
  }
}


//Детальная информация о товаре
class PhoneDetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final String price;

  const PhoneDetailScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name), 
        centerTitle: true,
      ),
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const SizedBox(
              height: 20
             ), 
            Image.network(
              imagePath,
             width: 500, 
             height: 400
            ), 
            const SizedBox(
              height: 25
            ), 
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50
              ),
              child: Text(
                description, 
                style: const TextStyle(
                  fontSize: 20
                ), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}



