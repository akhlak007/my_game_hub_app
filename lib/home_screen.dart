import 'package:flappy_bird/games/game_four/game_four.dart';
import 'package:flappy_bird/games/game_two/game_two.dart';
import 'package:flutter/material.dart';
import 'games/game_one/game_one.dart';
import 'games/game_three/game_three.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Game Hub')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Ad network image banner at the top. Replace with your ad image.
              Container(
                margin: EdgeInsets.all(16.0),
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://th.bing.com/th/id/OIP.H3xtG6yIEQQRlzpb4gSjHgHaF3?rs=1&pid=ImgDetMain'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Grid of game cards
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _gameCard(
                      context,
                      imageUrl: 'https://th.bing.com/th/id/R.23b9284bc6ade2335812e553dfdb77a9?rik=ENVN8m2m1PsS5g&pid=ImgRaw&r=0', // Replace with actual image URL
                      title: 'Flappy Bird',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameOneApp()),
                        );
                      },
                    ),
                    _gameCard(
                      context,
                      imageUrl: 'https://th.bing.com/th/id/OIP.-f8QjCI1Q5Ix8mbMeTxMxAHaHa?rs=1&pid=ImgDetMain', // Replace with actual image URL
                      title: 'Fruit ninja',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameTwoApp()),
                        );
                      },
                    ),
                    _gameCard(
                      context,
                      imageUrl: 'https://th.bing.com/th/id/R.35dd4fb2a76b61c0af6805390d03d0de?rik=15IgmnxLZ4AIJA&pid=ImgRaw&r=0', // Replace with actual image URL
                      title: 'Tower Of Hanoi',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameThreeApp()),
                        );
                      },
                    ),
                    _gameCard(
                      context,
                      imageUrl: 'https://th.bing.com/th/id/R.cf7e0046ccef46771d24c7e85792efdd?rik=i2yGbMDOUPo6dw&pid=ImgRaw&r=0',
                      //imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=HoRmgXA8&id=F0BAF4E16335DD1B15C950DC593F25F1A57FFF46&thid=OIP.HoRmgXA8R0mSq2loS85WLwHaHa&mediaurl=https%3a%2f%2fplay-lh.googleusercontent.com%2f5ENdgpFsRhQt9y_ySp9UK_p-CL0TmhSwW5pKmmzzIW0OLFR3EvAtzAGm6c_IkkfgVg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.1e846681703c474992ab69684bce562f%3frik%3dRv9%252fpfElP1ncUA%26pid%3dImgRaw%26r%3d0&exph=512&expw=512&q=tic+tac+toe+picture&simid=608052582901811319&FORM=IRPRST&ck=A6C957B5F3924DE12C41EC8F90BAF21C&selectedIndex=9&itb=0', // Replace with actual image URL
                      title: 'Tic Tac Toe',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameFour()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gameCard(BuildContext context,
      {required String imageUrl, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.0,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Dark overlay for readability of the title
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.black26,
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
