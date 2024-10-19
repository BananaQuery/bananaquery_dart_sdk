abstract class Nutrient {
  double amount; // Gram amount of the nutrient per every 100 grams of the plans item's weight
  final String type; // Nutrient name, ex: "protein" or "fat".
  final String units; // The name of the units for the nutrient (eg: grams, mg)

  Nutrient({required this.amount, required this.units, required this.type});

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'amount': amount,
      'units': units
    };
  }

  Nutrient.fromJson(Map<String, dynamic> json) :
        type = json['type'],
        amount = json['amount'],
        units = json['units'];

  @override
  int get hashCode => type.hashCode ^
      amount.hashCode ^
      units.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Nutrient &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          amount == other.amount &&
          units == other.units;

  @override
  String toString() {
    return 'Nutrient{type: $type, amount: $amount, units: $units}';
  }

  double amountInGrams(double weight) {
    return (amount / 100) * weight;
  }
}
