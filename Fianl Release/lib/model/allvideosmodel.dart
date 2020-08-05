// To parse this JSON data, do
//
//     final allVideosModel = allVideosModelFromJson(jsonString);

import 'dart:convert';

List<AllVideosModel> allVideosModelFromJson(String str) => List<AllVideosModel>.from(json.decode(str).map((x) => AllVideosModel.fromJson(x)));

String allVideosModelToJson(List<AllVideosModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllVideosModel {
    AllVideosModel({
        this.id,
        this.userId,
        this.username,
        this.audiofileName,
        this.audioFile,
        this.videofileName,
        this.videoFile,
        this.status,
        this.createdAt,
        this.likesCount,
        this.heartCount,
        this.commentsCount,
        this.shareCount,
        this.likedStatus,
        this.heartStatus,
    });

    int id;
    int userId;
    String username;
    String audiofileName;
    String audioFile;
    String videofileName;
    String videoFile;
    bool status;
    DateTime createdAt;
    int likesCount;
    int heartCount;
    int commentsCount;
    int shareCount;
    bool likedStatus;
    bool heartStatus;

    factory AllVideosModel.fromJson(Map<String, dynamic> json) => AllVideosModel(
        id: json["id"],
        userId: json["user_id"],
        username: json["username"],
        audiofileName: json["audiofile_name"],
        audioFile: json["audio_file"],
        videofileName: json["videofile_name"],
        videoFile: json["video_file"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        likesCount: json["likes_count"],
        heartCount: json["heart_count"],
        commentsCount: json["comments_count"],
        shareCount: json["share_count"],
        likedStatus: json["liked_status"],
        heartStatus: json["heart_status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "username": username,
        "audiofile_name": audiofileName,
        "audio_file": audioFile,
        "videofile_name": videofileName,
        "video_file": videoFile,
        "status": status,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "likes_count": likesCount,
        "heart_count": heartCount,
        "comments_count": commentsCount,
        "share_count": shareCount,
        "liked_status": likedStatus,
        "heart_status": heartStatus,
    };
}
