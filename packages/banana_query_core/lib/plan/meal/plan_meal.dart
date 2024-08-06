class PlanMeal {
  PlanMeal({required this.index, required this.name});
  int index;
  String name;

  Map<String, dynamic> toJson() => {
        "index": index,
        "name": name,
      };

  static PlanMeal fromJson(Map<String, dynamic> json) {
    return PlanMeal(index: json['index'], name: json['name']);
  }
}
