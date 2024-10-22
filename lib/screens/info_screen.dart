import 'package:kyliesartgalleryPJ01/widgets/button_section.dart';
import 'package:kyliesartgalleryPJ01/widgets/image_section.dart';
import 'package:kyliesartgalleryPJ01/widgets/text_section.dart';
import 'package:kyliesartgalleryPJ01/widgets/title_section.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kylie's Art Gallrey"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(imageUrl: 'assets/images/kyliesartgallerybanner.webp'),
            TitleSection(
              name: "Kylie's Art Gallrey", 
              location: 'London, UK',
            ),
            ButtonSection(),
            TextSection(
  description: '''
Kylie's Art Gallery is a vibrant and inspiring space dedicated to showcasing the works of talented artists. Our curated collection features a diverse range of styles and mediums, from traditional paintings to contemporary digital art. Whether you're an experienced art enthusiast or simply looking to explore something new, you're sure to find something that captures your imagination.

Our gallery is committed to supporting emerging artists and providing a platform for their work to be seen. We also offer workshops and events throughout the year, giving visitors the opportunity to learn more about the creative process and connect with the artists themselves.

Come visit Kylie's Art Gallery and discover a world of beauty and inspiration.
''',
)
          ],
        ),
      ),
    );
  }
}