import '../amino_acid.dart';

abstract class NonEssentialAminoAcid extends AminoAcid {
  NonEssentialAminoAcid({required super.amount, required super.units, required super.type});

  NonEssentialAminoAcid.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}