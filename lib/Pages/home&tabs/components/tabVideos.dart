import 'package:eco_app/models/lista_reproduccion.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class TabVideos extends StatefulWidget {
  @override
  _TabVideosState createState() => _TabVideosState();
}

class _TabVideosState extends State<TabVideos> {
  bool showItem = false;

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Text(
              'Reproductor de videos',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: screenH > screenW ? screenW : screenW * 0.8,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    YoutubePlayerIFrame(
                        controller: YoutubePlayerController(
                            initialVideoId: links.first.toString(),
                            params: YoutubePlayerParams(
                                playlist: links,
                                autoPlay: false,
                                enableCaption: true,
                                showControls: true,
                                color: 'blue'))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
