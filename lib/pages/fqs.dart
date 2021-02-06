import 'package:coronavirus/data_souce.dart';
import 'package:coronavirus/localization/localization_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'FAQS')),
      ),
      body: ListView.builder(itemCount: DataSource.questionAnswers.length ,itemBuilder: (context, index) {
        return ExpansionTile(
            title: Text(getLangCode(context) == ARABIC ? DataSource.questionAnswersAr[index]['question'] : DataSource.questionAnswers[index]['question'],
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
                child: Text(getLangCode(context) == ARABIC ? DataSource.questionAnswersAr[index]['answer'] : DataSource.questionAnswers[index]['answer'])),
          ],
        );
      }),
    );
  }
}
