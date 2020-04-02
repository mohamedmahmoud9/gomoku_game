import 'package:flutter/material.dart';
import 'two_player_game.dart';
class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SizedBox(
            //       width: 100.0,
            //       height: 100.0,
            //       child: Cross(),
            //     ),
            //     SizedBox(
            //       width: 110.0,
            //       height: 110.0,
            //       child: Circle(),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SizedBox(
            //       width: 110.0,
            //       height: 110.0,
            //       child: Circle(),
            //     ),
            //     SizedBox(
            //       width: 100.0,
            //       height: 100.0,
            //       child: Cross(),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'GO ',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'MO ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'KU',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: 60.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                child: RaisedButton(
                  child: Text(
                    'Single Player',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  onPressed: () {}
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: 60.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                child: RaisedButton(
                  child: Text(
                    'Multi Player',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TwoPlayerGame())),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}