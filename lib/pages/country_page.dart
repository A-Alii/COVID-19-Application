import 'package:coronavirus/data_souce.dart';
import 'package:coronavirus/localization/localization_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List CountriesData;
  List FilterCountres = [];
  bool isSearching = false;

  // fetchcountriesdata() async {
  //   http.Response response =
  //       await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
  //   setState(() {
  //     CountriesData = json.decode(response.body);
  //   });
  // }

  Future fetchdata() async {
    var res = await http.get("https://corona.lmao.ninja/v2/countries?sort=cases");
    if (res.statusCode == 200) {
      var CountriesData = json.decode(res.body);
      return CountriesData;
    }
  }

  @override
  void initState() {
    fetchdata().then((data){
      setState(() {
        CountriesData = FilterCountres = data;
      });
    });
    super.initState();
  }

  void _filterCountries(value) {
    setState(() {
      FilterCountres = CountriesData.where((country) => country['country'].toLowerCase().contains (value.toLowerCase()),).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text(getTranslated(context,'Countries_Status'))
            : TextField(
          onChanged: (value){
            _filterCountries(value);
          },
          style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white,),
                  hintText: getTranslated(context,"Search_Country_Here..."),
                  hintStyle: TextStyle(color: Colors.white),
                ),
        ) ,
        actions: [
          isSearching?
          IconButton(
              icon: Icon(Icons.cancel),
              onPressed: (){
                setState(() {
                  this.isSearching = false;
                  FilterCountres = CountriesData;
                });
              }) :
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                setState(() {
                  this.isSearching = true;
                });
              }),
        ],
      ),
      body: FilterCountres == null
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.pink,
            ))
          : ListView.builder(
              itemCount: FilterCountres == null ? 0 : FilterCountres.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        offset: Offset(0, 10),
                        blurRadius: 10),
                  ]),
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FilterCountres[index]['country'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.network(
                              FilterCountres[index]['countryInfo']['flag'],
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('CONFIRMED:' + FilterCountres[index]['cases'].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                            ),
                            Text('ACTIVE:' + FilterCountres[index]['active'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Text('RECOVERED:' + FilterCountres[index]['recovered'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Text('DEATHS:' + FilterCountres[index]['deaths'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                );
              }),
    );
  }
}
