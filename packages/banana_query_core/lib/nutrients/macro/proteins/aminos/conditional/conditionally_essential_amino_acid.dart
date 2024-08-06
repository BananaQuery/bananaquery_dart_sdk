import '../amino_acid.dart';

abstract class ConditionallyEssentialAminoAcid extends AminoAcid {
  ConditionallyEssentialAminoAcid({required super.amount, required super.units, required super.type});

  ConditionallyEssentialAminoAcid.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}