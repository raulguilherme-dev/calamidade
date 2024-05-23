

import 'package:core_module/core_module.dart';

class RequestAdapter {
  static RequestEntity fromJson(Map<String, dynamic> map) {
    return RequestEntity(
      id: map['id'] ?? -1,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      amount: map['amount'] ?? '',
      createdAt: DateTime.parse(map['createdAt']),
      financialPixkey: map['financialPixkey'] ?? '',
      financialBank: map['financialBank'] ?? '',
      financialAgency: map['financialBank'] ?? '',
      financialAccount: map['financialAccount'] ?? '',
      status: RequestStatusAdapter.fromJson(map['status']),
      helpType: RequestHelpTypeAdapter.fromJson(map['helpType']),
      user: RequestUserAdapter.fromJson(map['user']),
      godFather: map['godFather'] != null
          ? GodFatherAdapter.fromJson(map['godFather'])
          : null,
    );
  }

  static Map<String, dynamic> toJson(
      {required RequestEntity request, required int godFatherId}) {
    return {
      'title': request.title,
      'description': request.description,
      'amount': request.amount,
      'financialPixkey': request.financialPixkey,
      'financialBank': request.financialBank,
      'financialAgency': request.financialAgency,
      'financialAccount': request.financialAccount,
      'godFather': godFatherId
    };
  }
}
