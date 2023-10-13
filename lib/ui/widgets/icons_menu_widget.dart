part of 'widgets.dart';

class IconsMenuWidget extends StatelessWidget {
  const IconsMenuWidget({super.key, this.icons, this.title});

  final String? title;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: cGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(45 / 2)),
            child: Icon(icons),
          ),
          Text(
            title.toString(),
            style: titleHeader.copyWith(color: cGrey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
