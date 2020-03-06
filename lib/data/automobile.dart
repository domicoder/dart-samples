class Automobile {
    String modelName;
    String photo;

    Automobile({
        this.modelName,
        this.photo,
    });

    factory Automobile.fromJson(Map<String, dynamic> json) => Automobile(
        modelName: json["model_name"],
        photo: json["photo"],
    );

    Map<String, dynamic> toJson() => {
        "model_name": modelName,
        "photo": photo,
    };
}