// To parse this JSON data, do
//
//     final audioModel = audioModelFromJson(jsonString);

import 'dart:convert';

List<AudioModel> audioModelFromJson(String str) => List<AudioModel>.from(json.decode(str).map((x) => AudioModel.fromJson(x)));

String audioModelToJson(List<AudioModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AudioModel {
    AudioModel({
        this.id,
        this.userId,
        this.username,
        this.audiofileName,
        this.audioFile,
        this.audioTime,
        this.status,
        this.createdAt,
    });

    int id;
    int userId;
    String username;
    String audiofileName;
    String audioFile;
    dynamic audioTime;
    bool status;
    DateTime createdAt;

    factory AudioModel.fromJson(Map<String, dynamic> json) => AudioModel(
        id: json["id"],
        userId: json["user_id"],
        username: json["username"],
        audiofileName: json["audiofile_name"],
        audioFile: json["audio_file"],
        audioTime: json["audio_time"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "username": username,
        "audiofile_name": audiofileName,
        "audio_file": audioFile,
        "audio_time": audioTime,
        "status": status,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
    };
}
