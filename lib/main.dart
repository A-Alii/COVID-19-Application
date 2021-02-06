import 'package:coronavirus/data_souce.dart';
import 'package:coronavirus/home.dart';
import 'package:coronavirus/localization/localization_methods.dart';
import 'package:coronavirus/localization/set_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }


  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (_locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: _locale,
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'EG')
        ],
        theme: ThemeData(
          fontFamily: 'Circular',
          primaryColor: primaryBlack,
        ),
        home: HomePage(),
        localizationsDelegates: [
          SetLocalization.localizationsDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (deviceLocal, supportedLocales) {
          for(var local in supportedLocales) {
            if(local.languageCode == deviceLocal.languageCode && local.countryCode == deviceLocal.countryCode) {
              return deviceLocal;
            }
          }
          return supportedLocales.first;
        },
      );
    }
  }
}
