import 'trademark_automobile.dart';

class Data {
    List<TrademarkAutomobile> trademarkAutomobiles;

    Data({
        this.trademarkAutomobiles,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        trademarkAutomobiles: List<TrademarkAutomobile>.from(json["trademark_automobiles"].map((x) => TrademarkAutomobile.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "trademark_automobiles": List<dynamic>.from(trademarkAutomobiles.map((x) => x.toJson())),
    };
}