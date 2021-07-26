// To parse this JSON data, do
//
//     final userBalance = userBalanceFromJson(jsonString);

import 'dart:convert';

UserBalance userBalanceFromJson(String str) => UserBalance.fromJson(json.decode(str));

String userBalanceToJson(UserBalance data) => json.encode(data.toJson());

class UserBalance {
    UserBalance({
        this.data,
        this.success,
        this.message,
    });

    Data data;
    bool success;
    String message;

    factory UserBalance.fromJson(Map<String, dynamic> json) => UserBalance(
        data: Data.fromJson(json["data"]),
        success: json["success"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "success": success,
        "message": message,
    };
}

class Data {
    Data({
        this.yourCurrentBalance,
        this.userDetails,
    });

    int yourCurrentBalance;
    UserDetails userDetails;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        yourCurrentBalance: json["Your current Balance"],
        userDetails: UserDetails.fromJson(json["user details"]),
    );

    Map<String, dynamic> toJson() => {
        "Your current Balance": yourCurrentBalance,
        "user details": userDetails.toJson(),
    };
}

class UserDetails {
    UserDetails({
        this.id,
        this.name,
        this.email,
        this.wallet,
        this.username,
        this.phone,
        this.address,
        this.image,
        this.status,
        this.provider,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int id;
    String name;
    String email;
    int wallet;
    String username;
    dynamic phone;
    dynamic address;
    dynamic image;
    bool status;
    dynamic provider;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        wallet: json["wallet"],
        username: json["username"],
        phone: json["phone"],
        address: json["address"],
        image: json["image"],
        status: json["status"],
        provider: json["provider"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "wallet": wallet,
        "username": username,
        "phone": phone,
        "address": address,
        "image": image,
        "status": status,
        "provider": provider,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
