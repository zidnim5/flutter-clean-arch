class SiswaModel {
  final String name;
  final String class_name;
  final int class_id;

  SiswaModel(
      {required this.name, required this.class_name, required this.class_id});

  factory SiswaModel.fromJson(Map<String, dynamic> json) {
    return SiswaModel(
        name: json["Name"],
        class_name: json["ClassName"],
        class_id: json["ClassId"]);
  }
}
