class Songs {
  Songs({
    required this.data,
  });
  late final List<Data> data;

  Songs.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.songid,
    required this.songtitle,
    required this.mp3file,
    required this.songlength,
    required this.songdescription,
    required this.songcoverimage,
    required this.totalplays,
    required this.genreid,
    required this.songreleasedate,
  });
  late final String songid;
  late final String songtitle;
  late final String mp3file;
  late final String songlength;
  late final String songdescription;
  late final String songcoverimage;
  late final String totalplays;
  late final String genreid;
  late final String songreleasedate;

  Data.fromJson(Map<String, dynamic> json){
    songid = json['songid'];
    songtitle = json['songtitle'];
    mp3file = json['mp3file'];
    songlength = json['songlength'];
    songdescription = json['songdescription'];
    songcoverimage = json['songcoverimage'];
    totalplays = json['totalplays'];
    genreid = json['genreid'];
    songreleasedate = json['songreleasedate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['songid'] = songid;
    _data['songtitle'] = songtitle;
    _data['mp3file'] = mp3file;
    _data['songlength'] = songlength;
    _data['songdescription'] = songdescription;
    _data['songcoverimage'] = songcoverimage;
    _data['totalplays'] = totalplays;
    _data['genreid'] = genreid;
    _data['songreleasedate'] = songreleasedate;
    return _data;
  }
}