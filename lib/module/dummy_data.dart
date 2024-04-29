import 'gallery.dart';

class DummyData {
  static List<Gallery> getImages() {
    List<Gallery> images = [
      Gallery(
          img: 'assets/images/beach.jpeg',
          title: 'Beach',
          longTitle: 'A Journey to Serenity',
          description:
          "Explore the sun-kissed shores, feel the gentle breeze, and immerse yourself in the tranquil beauty of the beach."),
      Gallery(
          img: 'assets/images/butterfly.jpeg',
          title: 'Butterfly',
          longTitle: "Fluttering Beauty",
          description:
          "Vibrant wings dance in sunlight, embodying nature's elegance and grace, a mesmerizing spectacle of colors."),
      Gallery(
          img: 'assets/images/chocolate_cup.jpeg',
          title: 'Chocolate Cup',
          longTitle: "Cocoa Delight: Indulgence in a Cup",
          description:
          "Savor the rich aroma and velvety taste of cocoa perfection, nestled within a delicate cup, a symphony of indulgence awaits."),
      Gallery(
          img: 'assets/images/coffee.jpeg',
          title: 'Coffee',
          longTitle: "Café Bliss: Awakening the Senses",
          description:
          "Embark on a journey of aromatic delight with each sip of this rich and invigorating brew, igniting the senses with warmth and energy."),
      Gallery(
          img: 'assets/images/cup.jpeg',
          title: 'Cup',
          longTitle: "Sip of Elegance: The Cup's Tale",
          description:
          "Crafted to cradle the essence of your favorite beverage, this vessel of elegance promises a delightful experience with every sip."),
      Gallery(
          img: 'assets/images/desert.jpeg',
          title: 'Desert',
          longTitle: "Dunes of Tranquility: A Desert Odyssey",
          description:
          "Lost in the vast expanse, where time stands still, the desert whispers tales of endurance and beauty beneath the scorching sun."),
      Gallery(
          img: 'assets/images/eagle.jpeg',
          title: 'Eagle',
          longTitle: "Guardian of the Sky: The Majestic Eagle",
          description:
          "With wings that span the heavens, the eagle soars, embodying freedom, strength, and unwavering grace in the boundless azure."),
      Gallery(
          img: 'assets/images/ice_home.jpeg',
          title: 'Ice Home',
          longTitle: "Frozen Haven: The Enchanting Ice Home",
          description:
          "Nestled within a world of glistening frost, an ice home stands as a testament to nature's resilience and the beauty of frigid tranquility."),
      Gallery(
          img: 'assets/images/lion.jpeg',
          title: 'Lion',
          longTitle: "Monarch of the Savannah: The Mighty Lion",
          description:
          "In the heart of the wild, the lion reigns supreme, its golden mane billowing in the wind, a symbol of power and regal grace."),
      Gallery(
          img: 'assets/images/music.jpeg',
          title: 'Music',
          longTitle: "Harmonies Unleashed: The Magic of Music",
          description:
          "An enchanting symphony of melodies and rhythms, music transcends boundaries, stirring emotions and uniting souls in its timeless embrace."),
      Gallery(
          img: 'assets/images/night.jpeg',
          title: 'Night',
          longTitle: "Nocturnal Reverie: Embracing the Night",
          description:
          "Under the cloak of darkness, the world transforms, revealing its secrets and inviting contemplation amidst the shimmering tapestry of stars."),
    ];
    return images;
  }
}
