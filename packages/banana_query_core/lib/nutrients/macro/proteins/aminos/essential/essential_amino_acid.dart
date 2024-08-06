import '../amino_acid.dart';

abstract class EssentialAminoAcid extends AminoAcid {
  EssentialAminoAcid({required super.amount, required super.units, required super.type});

  EssentialAminoAcid.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}