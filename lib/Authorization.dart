import 'package:flutter/material.dart';
import 'Registratoin.dart';
import 'main.dart';


//Экран Авторизации
class AuthorizationRoute extends StatelessWidget {
  const AuthorizationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text('Авторизация'),
        ),
      ),
       body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
            child:Container(
                  width: 400,
                  height: 10,
                  color: Colors.white,
                  child: const Center(
                      child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.android),
                    hintText: "Введите логин",
                    )
                  ),
                  ),
                ),
              ),
          Expanded(
            flex: 3,
            child:Container(
                  width: 400,
                  height: 10,
                  color: Colors.white,
                  child: const Center(
                      child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.https),
                    hintText: "Пароль",
                    )
                  ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 400,
                  height: 20, 
           child: ElevatedButton(
              child: const Text('Нет аккаунта? Зарегистрироваться!'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationRoute()
                  ),
                );
              },
            ),
                ),
            ),
            const SizedBox(height: 40),
            Expanded(
              flex: 1,
              child: SizedBox(
                  width: 400,
                  height: 20, 
           child: ElevatedButton(
              child: const Text('Войти'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeRoute()
                  ),
                );
              },
            ),
              ),
            ),
            const SizedBox(height: 30),
          ]
        ),
      ),
    );
  }
}