
class AddMoneyModel {
    AddMoneyModel({
        this.id,
        this.userId,
        this.amount,
        this.type,
        this.comment,
        this.details,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String userId;
    String amount;
    String type;
    dynamic comment;
    String details;
    DateTime createdAt;
    DateTime updatedAt;

    factory AddMoneyModel.fromJson(Map<String, dynamic> json) => AddMoneyModel(
        id: json["id"],
        userId: json["user_id"],
        amount: json["amount"],
        type: json["type"],
        comment: json["comment"],
        details: json["details"] == null ? null : json["details"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "amount": amount,
        "type": type,
        "comment": comment,
        "details": details == null ? null : details,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
