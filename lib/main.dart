import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes2/ui/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Componentes',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: const [
          //Locale('en', 'US'),
          Locale('es', 'MX'),
        ],
        //home: HomePageTemp(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePageTemp(),
          'alert': (BuildContext context) => const AlertsScreen(),
          'inputs': (BuildContext context) => const InputsScreen(),
        },
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta llamada: ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => const AlertsScreen());
        },
        theme: ThemeData.dark().copyWith(
          //Color primario
          primaryColor: Color.fromARGB(255, 8, 49, 162),
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 8, 49, 162),
            elevation: 0,
          ),
        ));
  }
}
