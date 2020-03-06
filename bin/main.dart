import 'package:http/http.dart' as http;
import 'package:mixins/data/trademark_automobiles_response.dart';


void main() async {

  print('Waiting for response...');

  final trademarkAutomobilesResponse = await getTrademarkAutomobiles();

  print('Trademark Automobile');

  for (var trademarkAutomobile in trademarkAutomobilesResponse.data.trademarkAutomobiles) {
    print('Name: ${trademarkAutomobile.name}\nLogo: ${trademarkAutomobile.logo}\n');
  }

  print('Response was success.');

}

Future<TrademarkAutomobilesResponse> getTrademarkAutomobiles() async {
  try {
    final response = await http.get('https://pastebin.com/raw/XSax61Di');
    if (response.statusCode == 200) {
      final trademarkAutomobilesResponse = trademarkAutomobilesResponseFromJson(response.body);
      return trademarkAutomobilesResponse;
    }
  } catch (e) {
    throw Exception('Failed to fetch Trademark Automobiles!');
  }
}