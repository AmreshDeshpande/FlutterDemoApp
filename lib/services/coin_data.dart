import 'NetworkHelper.dart';
class CoinModel {

  var coinBaseUrl = "https://apiv2.bitcoinaverage.com/indices/global/ticker/";

  Future<dynamic> getPriceForCurrency(currency) async {
    NetworkHelper networkHelper = NetworkHelper(
        '${coinBaseUrl}BTC$currency');
    var coinData = await networkHelper.getData();
    return coinData;
  }

}
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {}
