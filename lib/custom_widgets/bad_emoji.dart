import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BadEmoji extends StatelessWidget {
  final SvgPicture _colored;

  BadEmoji({required colored}) : _colored = colored;
  SvgPicture emojiBody = SvgPicture.asset(
    'assets/emojiBody.svg',
    color: Color(0xFF342121),
  );
  final rightEmojiEye =
      SvgPicture.asset('assets/rightEmojiEye.svg', color: Color(0xFF342121));
  final rightEmojiMouth =
      SvgPicture.asset('assets/rightEmojiMouth.svg', color: Color(0xFF342121));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _colored,
        emojiBody,
        Positioned(
          child: rightEmojiEye,
          top: 22.26,
          left: 19.91,
          right: 36.17,
          bottom: 33.39,
        ),
        Positioned(
          child: rightEmojiEye,
          top: 22.26,
          left: 36.17,
          right: 19.91,
          bottom: 33.39,
        ),
        Positioned(
          child: rightEmojiMouth,
          top: 38.96,
          left: 18.09,
          right: 18.09,
          bottom: 16.7,
        )
      ],
    );
  }
}
