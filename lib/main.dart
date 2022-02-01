import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha/app/core/ui/vakinha_ui.dart';
import 'package:vakinha/app/routes/auth_routes.dart';
import 'package:vakinha/app/routes/splash_routes.dart';

void main(List<String> args) {
  runApp(const VakinhaBurguerMainApp());
}

class VakinhaBurguerMainApp extends StatelessWidget {
  const VakinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Para tirar o banner de debug
      debugShowCheckedModeBanner: false,
      title: 'Vakinha Burger',
      //Adicionando o tema
      theme: VakinhaUI.theme,
      //Trabalhando com rotas no Getx
      getPages: [
        ...SplashRoutes.routers,
        ...AuthRoutes.routers,
        
      ],
    );
  }
}
