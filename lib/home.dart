import 'dart:convert';
import 'package:coronavirus/Panels/info_panel.dart';
import 'package:coronavirus/Panels/most_effected_countries.dart';
import 'package:coronavirus/Panels/world_wide_panel.dart';
import 'package:coronavirus/data_souce.dart';
import 'package:coronavirus/localization/localization_methods.dart';
import 'package:coronavirus/localization/models.dart';
import 'package:coronavirus/main.dart';
import 'package:coronavirus/pages/country_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Map worldData;
  fetchworldwidedata() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List CountriesData;
  fetchcountriesdata() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      CountriesData = json.decode(response.body);
    });
  }

  Map historyData;


  fetchHistoryData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/historical/all');
    setState(() {
      historyData = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchworldwidedata();
    fetchcountriesdata();
    fetchHistoryData();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(getTranslated(context, 'COVID-19_Panel') ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: DropdownButton(
              underline: SizedBox(),
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              items: Language.languageList()
                .map<DropdownMenuItem<Language>>((lang) =>
                DropdownMenuItem(
                  value: lang,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        lang.flag,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(lang.name),
                    ],
                  ),
                )
              ).toList(),
              onChanged: (Language lang){
                _changeLanguage(lang);
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              height: 100,
              color: Colors.green[100],
              child: Text(
                getLangCode(context) == ARABIC ? DataSource.qoutAr : DataSource.qout,
                style: TextStyle(
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(getTranslated(context, 'WorldWide'),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CountryPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: primaryBlack,
                  ),

                  padding: EdgeInsets.all(10),
                  child: Text(getTranslated(context, 'Regional'),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                ),
              ),
                ],
              ),
            ),
            worldData == null? Center(child: CircularProgressIndicator(backgroundColor: Colors.pink,),)  : WorldWidePanel(worldWide: worldData, historyData: historyData),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(getTranslated(context, 'Most_affected_Countries'),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),),
            ),
            SizedBox(width: 10,),
            CountriesData == null? Container(): MostAffectedPanel(countryData: CountriesData,),
            SizedBox(width: 5,),
            InfoPanel(),
            SizedBox(width: 15,),
            Center(
              child: Text(getTranslated(context, 'WE_ARE_TOGETHER_TO_DEFEAT_COVID-19...'),
              style: TextStyle(
                color: Colors.green[300],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(width: 80,),
          ],
        ),
      ),
    );
  }

  void _changeLanguage(Language lang) async {
    Locale _temp = await setLocal(lang.languageCode);
    MyApp.setLocale(context, _temp);
  }

}
