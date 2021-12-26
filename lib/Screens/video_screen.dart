import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '1WB8C-5MP5o',
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: false,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  final data = [
    Post(
      image:
          'https://i.ytimg.com/vi/1WB8C-5MP5o/hqdefault.jpg',
      title: 'മലബാർ കലാപം : ചരിത്രവും വ്യാഖ്യാനവും',
      author: 'എം എൻ കാരശ്ശേരി',
      date: '25 Mar 2020',
      videoId: '1WB8C-5MP5o',
    ),
    Post(
      image:
          'https://i.ytimg.com/vi/C_Qw4u18UTg/hq720.jpg',
      title: 'മാപ്പിള ലഹള: മലബാറിലെ ഹിന്ദുവംശഹത്യ',
      author: 'Sanku T Das',
      date: '24 Mar 2020',
      videoId: 'ojB2VFdaPW8',
    ),
    Post(
      image:
          'https://i.ytimg.com/vi/c2r2iwiFBn8/hq720.jpg',
      title: 'മലബാർ കലാപം : ചരിത്ര പുസ്തകങ്ങളിലൂടെ',
      author: 'SOVI\'s WORLD',
      date: '15 Mar 2020',
      videoId: 'c2r2iwiFBn8',
    ),
    Post(
      image:
          'https://i.ytimg.com/vi/14LdtcBZzjw/hq720.jpg',
      title: 'The real History of Variyan Kunnathu Kunjahammed Haji',
      author: 'Ashraf Malayil',
      date: '11 Mar 2020',
      videoId: '14LdtcBZzjw',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        onReady: () {
          _isPlayerReady = true;
        },
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body: SafeArea(
          child: ListView(
            children: [
              videoContainer(player),
              metaData(),
              suggetionHead(),
              suggestionList(),
            ],
          ),
        ),
        floatingActionButton: flottingActionButton(),
      ),
    );
  }

  Widget vdoPlayer() => SizedBox();

  Widget videoContainer(videoContainer) => AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            clipBehavior: Clip.hardEdge,
            child: videoContainer,
            decoration: BoxDecoration(
              boxShadow: shadowList,
              // borderRadius:
              //     const BorderRadius.only(bottomRight: Radius.circular(100)),
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

  Widget metaData() => Container(
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
          Text(
            _videoMetaData.title,
            textAlign: TextAlign.center,
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
                vidId: post.videoId,
                onClick: () {
                  _controller.load(post.videoId);
                  _controller.flags.autoPlay;
                  setState(() {
                    _controller.play();
                  });
                });
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
      );
}

/// --------------------- Custom Widgets --------------------->

/// here is the [PostCell] widget this is the post shown in the suggetions of the video

class PostCell extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String date;
  final String vidId;

  final Function() onClick;
  PostCell({
    Key? key,
    required this.title,
    required this.image,
    required this.author,
    required this.date,
    required this.vidId,
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
                  fit: BoxFit.fill,
                  image: image,
                  placeholder: 'assets/image_placeholder.png',
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
  final String videoId;

  Post({
    required this.title,
    required this.image,
    required this.author,
    required this.date,
    this.videoId = '',
  });
}

List<BoxShadow> shadowList = [
  const BoxShadow(
      color: Color(0xFFE0E0E0), blurRadius: 30, offset: Offset(0, 10))
];
