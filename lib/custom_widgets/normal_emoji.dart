import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NormalEmoji extends StatelessWidget {
  final SvgPicture _colored;

  NormalEmoji({required colored}) : _colored = colored;
  SvgPicture emojiBody = SvgPicture.asset(
    'assets/emojiBody.svg',
    color: Color(0xFF342121),
  );
  final leftEmojiMouth =
  SvgPicture.asset('assets/leftEmojiMouth.svg', color: Color(0xFF342121));
  final middleEmojiEye =
  SvgPicture.asset('assets/middleEmojiEye.svg', color: Color(0xFF342121));
  final middleEmojiMouth =
  SvgPicture.asset('assets/middleEmojiMouth.svg', color: Color(0xFF342121));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _colored,
        emojiBody,
        Positioned(
          child: middleEmojiEye,
          top: 22.26,
          left: 16.7,
          right: 38.96,
          bottom: 33.39,
        ),
        Positioned(
          child: middleEmojiEye,
          top: 22.26,
          left: 38.96,
          right: 16.7,
          bottom: 33.39,
        ),
        Positioned(
          child: leftEmojiMouth,
          top: 38.96,
          left: 18.09,
          right: 18.09,
          bottom: 16.7,
        )
      ],
    );
  }
}
