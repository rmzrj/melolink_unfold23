class Song {
  final String srcUri;
  final String singer;
  final String title;
  final String imgPath;
  final String rlp;
  final String ePrice;

  Song(
      {required this.srcUri,
      required this.singer,
      required this.title,
      required this.imgPath,
      required this.ePrice,
      required this.rlp});
}

List<Song> songsData = [
  Song(
      srcUri:
          "https://bafybeigybjdxfvpvqe2eezgkn3ng5qdkpnt3edxnrtnvcwrcgd2mp4br54.ipfs.sphn.link/spotifydown.com%20-%20Starboy.mp3",
      singer: "The Weekend",
      title: "Starboy",
      imgPath: "assets/images/starboy.png",
      rlp: '2.3 ETH',
      ePrice: '198 ETH'),
  Song(
      srcUri:
          "https://bafybeigybjdxfvpvqe2eezgkn3ng5qdkpnt3edxnrtnvcwrcgd2mp4br54.ipfs.sphn.link/spotifydown.com%20-%20Wars.mp3",
      singer: "The Strumbellas",
      title: "Wars",
      imgPath: "assets/images/StrumbellasSpirits.jpg",
      rlp: '4 ETH',
      ePrice: '23 ETH'),
  Song(
      srcUri:
          "https://bafybeigybjdxfvpvqe2eezgkn3ng5qdkpnt3edxnrtnvcwrcgd2mp4br54.ipfs.sphn.link/spotifydown.com%20-%20Weekend%20(feat.%20Miguel).mp3",
      title: "Weekend (feat. Miguel)",
      singer: "Mac Miller",
      imgPath: "assets/images/Weekend.jpeg",
      rlp: '6.3 ETH',
      ePrice: '30 ETH'),

      Song(
      srcUri:
          "https://bafybeigybjdxfvpvqe2eezgkn3ng5qdkpnt3edxnrtnvcwrcgd2mp4br54.ipfs.sphn.link/spotifydown.com%20-%20White%20Walls%20(feat.%20ScHoolboy%20Q%20%26%20Hollis).mp3",
      title: "White Walls",
      singer: "Lewis",
      imgPath: "assets/images/White_Walls.jpg",
      rlp: '9.3 ETH',
      ePrice: '290 ETH'),
];
