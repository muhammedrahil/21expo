import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

List<BoxShadow> shadowList = [
  const BoxShadow(
      color: Color(0xFFE0E0E0), blurRadius: 30, offset: Offset(0, 10))
];

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  final data = [
    Post(
      image:
          'https://cdn.pixabay.com/photo/2021/10/26/12/34/christmas-6743572_960_720.jpg',
      title: 'Finding your Happines in your middle age',
      author: 'John Johny',
      date: '25 Mar 2020',
      videoUrl:
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
    ),
    Post(
      image:
          'https://cdn.pixabay.com/photo/2018/03/27/21/43/startup-3267505_960_720.jpg',
      title: 'How to Lead Before You Are in Charge',
      author: 'John Johny',
      date: '24 Mar 2020',
      videoUrl: 'https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4',
    ),
    Post(
      image:
          'https://cdn.pixabay.com/photo/2013/04/07/21/29/arc-de-triomphe-101633_960_720.jpg',
      title: 'How Minimalism Brought Me',
      author: 'John Johny',
      date: '15 Mar 2020',
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    ),
    Post(
      image:
          'https://cdn.pixabay.com/photo/2015/01/08/18/30/entrepreneur-593371_960_720.jpg',
      title: 'The Most Important Color In UI Design',
      author: 'John Johny',
      date: '11 Mar 2020',
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            videoContainer(),
            metaData,
            suggetionHead(),
            suggestionList(),
          ],
        ),
      ),
      floatingActionButton: flottingActionButton(),
    );
  }

  Widget vdoPlayer() => VideoPlayer(_controller);

  Widget videoContainer() => AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Container(
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            clipBehavior: Clip.hardEdge,
            child: vdoPlayer(),
            decoration: BoxDecoration(
              boxShadow: shadowList,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(100)),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ],
              ),
            ),
          ),
        ),
      );

  Widget metaData = Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    alignment: Alignment.center,
    child: Column(children: [
      Text(
        'RCSH EXPO 2021',
        // style: TextStyle(
        //   fontSize: 25,
        //   fontWeight: FontWeight.bold,
        // ),
        style: GoogleFonts.playfairDisplay(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF000000),
        ),
      ),
      const SizedBox(height: 8),
      const Text(
        'We all welcome all of you to RCSH 1921 21 days program',
      ),
    ]),
  );

  Widget flottingActionButton() => Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      );

  Widget suggetionHead() => Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 8),
        child: Text(
          'Related Videos',
          style: GoogleFonts.playfairDisplay(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF000000),
          ),
          textAlign: TextAlign.left,
        ),
      );

  Widget suggestionList() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final post = data[index];
            return PostCell(
                title: post.title,
                image: post.image,
                author: post.author,
                date: post.date,
                onClick: () {
                  _controller.dispose();
                  _controller =
                      VideoPlayerController.network(post.videoUrl.toString())
                        ..initialize().then((_) {
                          setState(() {});
                          _controller.play();
                        });
                  // vdoPlayer();
                });
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
      );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

/// --------------------- Custom Widgets --------------------->

/// here is the [PostCell] widget this is the post shown in the suggetions of the video

class PostCell extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String date;
  final Function() onClick;
  PostCell({
    Key? key,
    required this.title,
    required this.image,
    required this.author,
    required this.date,
    required this.onClick,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: shadowList,
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage.assetNetwork(
                  image: image,
                  placeholder: 'assets/images/image_placeholder.png',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$author, $date',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///------------------------------ Models -------------------------->

///  the [Post] model for this page

class Post {
  final String title;
  final String image;
  final String author;
  final String date;
  final String videoUrl;

  Post({
    required this.title,
    required this.image,
    required this.author,
    required this.date,
    this.videoUrl = '',
  });
}
