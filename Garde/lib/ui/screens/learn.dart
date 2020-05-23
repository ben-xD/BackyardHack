import 'package:Garde/ui/widgets/hamburger.dart';
import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class LearnScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnScreenState();
}

void searchForPlantHandler() {}

class _LearnScreenState extends State<LearnScreen> {
  //final _countryKey = GlobalKey<FormState>();
  String dropdownValue = 'Canada';
  String url = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hamburger(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Learn"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 28),
            tooltip: "Search for plants in your garden",
            onPressed: searchForPlantHandler,
          ),
        ],
      ),
      body: Row(
        children: [
          Text(
            'Enter your country of residence:',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
                switch(newValue){
                  case 'United States':
                    url = 'https://planthardiness.ars.usda.gov/PHZMWeb/InteractiveMap.aspx';
                    break;
                  case 'Canada':
                    url = 'http://planthardiness.gc.ca/images/PHZ_2014_CFS_Map_30M.pdf';
                    break;
                }
              });
            },
            items: <String>['Canada', 'United States']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          RaisedButton(
             onPressed: () {
               if(url!=null){

               }
             },
             child: const Text('Navigate to Hardiness Zone Map', style: TextStyle(fontSize: 20)),
           ),
           const SizedBox(height: 30),
        ],
      ),
    );
  }

  /*void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }*/
}

/*class WebViewContainer extends StatefulWidget {
  final url;

  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}*/

/*class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  _WebViewContainerState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}*/

/*class hardinessSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hardiness Zone Map"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }*/
//}