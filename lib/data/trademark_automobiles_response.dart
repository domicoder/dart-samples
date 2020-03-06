// To parse this JSON data, do
//
//     final trademarkAutomobilesResponse = trademarkAutomobilesResponseFromJson(jsonString);

import 'dart:convert';

import 'data.dart';

class TrademarkAutomobilesResponse {
    String status;
    Data data;

    TrademarkAutomobilesResponse({
        this.status,
        this.data,
    });

    factory TrademarkAutomobilesResponse.fromJson(Map<String, dynamic> json) => TrademarkAutomobilesResponse(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

TrademarkAutomobilesResponse trademarkAutomobilesResponseFromJson(String str) => TrademarkAutomobilesResponse.fromJson(json.decode(str));

String trademarkAutomobilesResponseToJson(TrademarkAutomobilesResponse data) => json.encode(data.toJson());
