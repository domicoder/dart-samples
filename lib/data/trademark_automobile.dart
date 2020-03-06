import 'automobile.dart';

class TrademarkAutomobile {
    String name;
    String logo;
    List<Automobile> automobiles;

    TrademarkAutomobile({
        this.name,
        this.logo,
        this.automobiles,
    });

    factory TrademarkAutomobile.fromJson(Map<String, dynamic> json) => TrademarkAutomobile(
        name: json["name"],
        logo: json["logo"],
        automobiles: List<Automobile>.from(json["automobiles"].map((x) => Automobile.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "logo": logo,
        "automobiles": List<dynamic>.from(automobiles.map((x) => x.toJson())),
    };
}
