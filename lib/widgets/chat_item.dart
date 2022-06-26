import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String profilePictureUrl;
  final String fullName;
  final String message;
  final String time;
  final bool seen;
  final bool online;

  const ChatItem({
    Key? key,
    this.profilePictureUrl =
        "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/137106531/original/af76851be3f941132a66deb7c9e6fda6d44cae3e/create-a-cool-custom-profile-picture-of-your-photo.png",
    required this.fullName,
    required this.message,
    required this.time,
    required this.seen,
    required this.online,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      child: ListTile(
        leading: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(profilePictureUrl),
            ),
            online
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.white, width: 1.5),
                      color: Colors.green,
                    ),
                    width: 11.0,
                    height: 11.0,
                  )
                : const SizedBox.shrink(),
          ],
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                fullName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            seen
                ? const Icon(
                    Icons.done_all,
                    color: Colors.green,
                    size: 16.0,
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        subtitle: Text(
          message,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

// Profile Picture Urls:
// "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1qVBGC-ojHph_0cNUjvkCdwzmI0LdYcWbEZmIdM1HIgbyP9o4ijqfnOqsUUnEKXaZduA&usqp=CAU"
// "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/137106531/original/af76851be3f941132a66deb7c9e6fda6d44cae3e/create-a-cool-custom-profile-picture-of-your-photo.png"
// "https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg"
// "https://marketplace.canva.com/EAE6OH6DF2w/1/0/1600w/canva-moon-astronaut-character-twitch-profile-picture-0kkgyJSodt4.jpg"
