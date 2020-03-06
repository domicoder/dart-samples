import 'package:http/http.dart' as http;
import 'package:mixins/data/trademark_automobiles_response.dart';

void main() async {
  print("Waiting for response...");

  final trademarkAutomobilesResponse = getTrademarkAutomobiles("dd");
  print("Response was success.");
}



Future<TrademarkAutomobilesResponse> getTrademarkAutomobiles(String json) async {
  final trademarkAutomobilesResponse = await trademarkAutomobilesResponseFromJson(json);
  return trademarkAutomobilesResponse;
}