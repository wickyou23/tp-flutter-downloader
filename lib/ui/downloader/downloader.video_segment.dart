part of 'downloader.dart';

enum _VideoContentType { video, audio }

class _VideoContentSegment extends StatefulWidget {
  final Function(_VideoContentType) onSelectedVideo;

  const _VideoContentSegment({
    required this.onSelectedVideo,
    super.key,
  });

  @override
  State<_VideoContentSegment> createState() => __VideoContentSegmentState();
}

class __VideoContentSegmentState extends State<_VideoContentSegment> {
  _VideoContentType currentType = _VideoContentType.video;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedAlign(
            alignment: currentType == _VideoContentType.video
                ? Alignment.centerLeft
                : Alignment.centerRight,
            duration: Duration(milliseconds: 250),
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                height: double.infinity,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    widget.onSelectedVideo(_VideoContentType.video);
                    setState(() {
                      currentType = _VideoContentType.video;
                    });
                  },
                  child: Text(
                    "Video",
                    style: TextStyle(
                      color: currentType == _VideoContentType.video
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    widget.onSelectedVideo(_VideoContentType.audio);
                    setState(() {
                      currentType = _VideoContentType.audio;
                    });
                  },
                  child: Text(
                    "Audio",
                    style: TextStyle(
                      color: currentType == _VideoContentType.audio
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
