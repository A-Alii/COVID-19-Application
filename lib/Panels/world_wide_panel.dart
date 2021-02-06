import 'package:coronavirus/widget/info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {

  final Map worldWide;
  final Map historyData;

  const WorldWidePanel({Key key, this.worldWide, this.historyData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: [
          InfoCard(
            title: 'CASES',
            iconColor: Colors.red,
            effectedNum: worldWide['cases'],
            press: (){

            },
            cardColor: Colors.red[50],
            historyData: historyData,
          ),
          //StatusPanel(),
          InfoCard(
            title: 'RECOVERED',
            iconColor: Colors.blue,
            effectedNum: worldWide['recovered'],
            press: (){

            },
            cardColor: Colors.blue[50],
            historyData: historyData,
          ),
          InfoCard(
            title: 'DEATHS',
            iconColor: Colors.amber,
            effectedNum: worldWide['deaths'],
            press: (){

            },
            cardColor: Colors.amber[50],
            historyData: historyData,
          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String Count;

  const StatusPanel({Key key, this.panelColor, this.textColor, this.title, this.Count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(5),
      color: panelColor,
      height: 100,
      width: width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: textColor,
            ),),
          Text(Count,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor,
            ),),
        ],
      ),
    );
  }
}

