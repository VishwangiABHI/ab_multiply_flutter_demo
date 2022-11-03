import 'package:flutter/material.dart';
import 'package:ab_multiply_demo/services/api_services.dart';
import '../utilities/constants.dart';
import 'package:ab_multiply_demo/models/workout_videos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWatchScreen extends StatefulWidget {
  @override
  State<VideoWatchScreen> createState() => _VideoWatchScreen();
}

class _VideoWatchScreen extends State<VideoWatchScreen> {
  late YoutubePlayerController youtubePlayerController;
  late WorkoutVideosModel workoutVideosModel;
  ScrollController controller = ScrollController();
  bool isLoading = false;
  void apiCall() async {
    setState(() {
      isLoading = true;
    });

    workoutVideosModel = await ApiServices().getWorkoutVideos();

    String? redirectUrl = workoutVideosModel
        .data?.upcomingEvents?[0].events?[0].redirectURL
        ?.toString();
    setState(() {
      isLoading = false;
    });

    String videoUrl = '$kYoutubeUrl$redirectUrl';
    youtubePlayerController = YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
            flags: YoutubePlayerFlags(autoPlay: true))
        /*..addListener(() {
        setState(() {});
      })*/
        ;
  }

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  @override
  void deactivate() {
    youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }
  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Watch'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: isLoading
            ? Center(
                child: kSpinkit,
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: */ /*VideoWatch(
                  videoPlayerController:
                      VideoPlayerController.network(widget.workoutVideosModel.data?.upcomingEvents?),
                  looping: true,
                  autoplay: true,
                ),*/ /*
                    YoutubePlayerBuilder(
                        player: YoutubePlayer(
                          controller: youtubePlayerController,
                        ),
                        builder: (context, player) => ListView(
                              children: [player],
                            )),
              ),
      ),
    );
  }*/

/*  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: youtubePlayerController,
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: Text('Video Watch'),
        ),
        body: ListView(
          children: [
            player,
            Text(youtubePlayerController.metadata.title),
            Text(youtubePlayerController.metadata.author),
            Text(
                '${youtubePlayerController.metadata.duration.inMinutes} minutes'),
            */ /* ElevatedButton(
                onPressed: () {
                  youtubePlayerController.toggleFullScreenMode();
                },
                child: Text('Full Screen'),
              ),*/ /*
            */ /*ElevatedButton(
                onPressed: () {
                  */ /* */ /* youtubePlayerController.mute();
                  youtubePlayerController.unMute();*/ /* */ /*
                  youtubePlayerController.seekTo(Duration(seconds: 10));
                },
                child: Text('Mute/Unmute'),
              ),*/ /*
          ],
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Workout Anytime, Anywhere',
            style: TextStyle(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          toolbarHeight: MediaQuery.of(context).size.height / 9,
          elevation: 0,
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.vertical(
              bottom: new Radius.elliptical(30, 30),
            ),
          ),
        ),
        body: isLoading
            ? Container(
                color: Colors.white,
                child: Center(
                  child: kSpinkit,
                ),
              )
            : SingleChildScrollView(
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount:
                      null == workoutVideosModel.data?.upcomingEvents?[1].events
                          ? 0
                          : workoutVideosModel
                              .data?.upcomingEvents?[1].events?.length,
                  itemBuilder: (context, index) {
                    Events? upcomingEvents = workoutVideosModel
                        .data?.upcomingEvents?[1].events?[index];

                    var url = upcomingEvents?.redirectURL;
                    print(url);

                    String videoUrl = '$kYoutubeUrl$url';
                    YoutubePlayerController _controller =
                        YoutubePlayerController(
                      initialVideoId: url.toString(),
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: false,
                        disableDragSeek: true,
                        loop: false,
                        isLive: false,
                        forceHD: false,
                        controlsVisibleAtStart: true,
                      ),
                    );
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        //color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        child: YoutubePlayerBuilder(
                          player: YoutubePlayer(
                            thumbnail: ImageIcon(
                                NetworkImage('${upcomingEvents?.image}')),
                            controller: _controller,
                            showVideoProgressIndicator: true,
                            progressIndicatorColor: Colors.amber,
                            progressColors: ProgressBarColors(
                              playedColor: Colors.amber,
                              handleColor: Colors.amberAccent,
                            ),
                            /*   bottomActions: [
                              FullScreenButton(
                                controller: _controller,
                                color: Colors.amber,
                              ),
                            ],*/
                          ),
                          builder: (context, player) => player,
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
