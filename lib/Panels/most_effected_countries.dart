import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Image.network(countryData[index]['countryInfo']['flag'], height: 30,width: 30,),
                SizedBox(width: 10,),
                Text(countryData[index]['country'],
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 15,),
                Text(countryData[index]['deaths'].toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
                ),
                //Text(countryData[index]['deaths'].toString()),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
