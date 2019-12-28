import 'package:flutter/material.dart';

class PageDetailNews extends StatefulWidget {

  List list;
  int index;

  PageDetailNews({this.list, this.index});
  @override
  _PageDetailNewsState createState() => _PageDetailNewsState();
}

class _PageDetailNewsState extends State<PageDetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.list[widget.index]['judul_berita']),
      ),

      body: new ListView(
        children: <Widget>[
          new Image.network("http://169.254.80.80/sport_news_server/gambar/" + widget.list[widget.index]['gbr_berita']),
          new Container(
            padding: EdgeInsets.all(32.0),
            child: new Row(
              children: <Widget>[
                Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: new Text("Title : " + widget.list[widget.index]["judul_berita"]),
                      ),

                      new Text("Date : " + widget.list[widget.index]["tgl_berita"])
                    ],
                  ),
                )
              ],
            ),
          ),

          new Container(
            padding: EdgeInsets.all(32.0),
            child: new Text(
              widget.list[widget.index]["isi_berita"],
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}