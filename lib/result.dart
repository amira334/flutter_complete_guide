import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore >= 15) {
      resultText = "You are negative";
    } else if (resultScore >= 12) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are positive';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart Quiz!!')),
        ],
      ),
    );
  }
}
