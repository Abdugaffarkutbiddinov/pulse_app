import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoodEmoji extends StatelessWidget {
  final SvgPicture _colored;

  GoodEmoji({required colored}) : _colored = colored;
  SvgPicture emojiBody = SvgPicture.asset(
    'assets/emojiBody.svg',
    color: Color(0xFF342121),
  );
  SvgPicture leftEmojiLeftEye =
  SvgPicture.asset('assets/leftEmojiLeftEye.svg', color: Color(0xFF342121));
  final leftEmojiMouth =
  SvgPicture.asset('assets/leftEmojiMouth.svg', color: Color(0xFF342121));
  final leftEmojiRightEye =
  SvgPicture.asset('assets/leftEmojiRightEye.svg', color: Color(0xFF342121));


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _colored,
        emojiBody,
        Positioned(
          child: leftEmojiLeftEye,
          top: 19.48,
          left: 13.91,
          right: 36.17,
          bottom: 30.61,
        ),
        Positioned(
          child: leftEmojiRightEye,
          top: 19.48,
          left: 36.17,
          right: 13.91,
          bottom: 30.61,
        ),
        Positioned(
          child: leftEmojiMouth,
          top: 38.96,
          left: 18.09,
          right: 18.09,
          bottom: 16.7,
        ),
      ],
    );
  }
}
