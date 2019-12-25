import 'dart:io' show Platform;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = "USD";
  String selectedCurrencyPrice = "?";
  bool loading = false;

  DropdownButton getDropDownButton() {
    List<DropdownMenuItem> dropDownMenuItem = [];
    for (String currency in currenciesList) {
      DropdownMenuItem menuItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropDownMenuItem.add(menuItem);
    }

    return DropdownButton(
        value: selectedCurrency,
        items: dropDownMenuItem,
        onChanged: (value) {
          //setState(() {
          selectedCurrency = value;
          getCurrencyPrice();
         // });
        });
  }

  getCapertinoiOSPicker() {
    List<Widget> copertinoPickerItems = [];
    for (String currency in currenciesList) {
      copertinoPickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 30.0,
      onSelectedItemChanged: (selectedIndex) {
       // setState(() {
        selectedCurrency = currenciesList[selectedIndex];
          getCurrencyPrice();

       // });
      },
      children: copertinoPickerItems,
      backgroundColor: Colors.lightBlue,
    );
  }

  getCurrencyPrice() async {
    setState(() {
      selectedCurrencyPrice = "?";
      loading = true;
    });

    CoinModel coinModel = CoinModel();
    var coinData = await coinModel.getPriceForCurrency(selectedCurrency);

    double value = coinData['last'];
    setState(() {
      loading = false;
      selectedCurrencyPrice =  value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $selectedCurrencyPrice $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Visibility(
                visible: loading,
                child: SpinKitDoubleBounce(
                    color: Colors.white,
                    size: 100.0
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: Platform.isIOS
                  ? getCapertinoiOSPicker()
                  : getDropDownButton()),
        ],
      ),
    );
  }
}
