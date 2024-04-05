import 'package:flutter/material.dart';
import 'package:youtube_clone_project/model/Video.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Stack(
            children: [
              Text(
                video.playTime,
                style: TextStyle(color: Colors.white),
              ),
              Image.asset('assets/thumbnail.jpg')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      video.profileImg,
                      width: 50,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            video.title,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Text(
                                video.channelName,
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(' - '),
                              Text(
                                '조회수 ${video.count}회',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(' - '),
                              Text(
                                video.history,
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
    );
  }
}
