
class PlanDay {
  PlanDay({required this.index, required this.name});
  int index;
  String name;

  Map<String, dynamic> toJson() => {"index": index, "name": name};

  static PlanDay fromJson(Map<String, dynamic> json) {
    return PlanDay(index: json["index"], name: json["name"]); 
  }
}
