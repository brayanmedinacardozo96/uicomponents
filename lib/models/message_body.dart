class MessageBody {
  String? text;
  List<Texts>? richText;
  bool? isbold;

  MessageBody({this.text, this.isbold});

  MessageBody.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    isbold = json['isbold'];
    if (json['rich_text'] != null) {
      richText = <Texts>[];
      json['rich_text'].forEach((v) {
        richText!.add(Texts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['rich_text'] = richText;
    data['isbold'] = isbold;
    return data;
  }
}

class Texts {
  String? text;
  bool? isbold;

  Texts({this.text, this.isbold});

  Texts.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    isbold = json['isbold'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['isbold'] = isbold;
    return data;
  }
}
