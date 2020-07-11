import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-calculate',
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
