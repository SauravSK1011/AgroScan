import 'dart:ffi';
import 'dart:io';

import 'package:agroscan/Screens/Searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatefulWidget {
  Result(
      {super.key,
      required this.result,
      required this.confidence,
      required this.image});
  String result;
  var confidence;
  File image;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String precautions = '';

  @override
  Widget build(BuildContext context) {
    switch (widget.result) {
      case 'Apple___Apple_scab':
        precautions =
            "The first symptoms of this disease are found in the foliage, blossoms, and developing fruits of affected trees, which develop dark, irregularly-shaped lesions upon infection. Although apple scab rarely kills its host, infection typically leads to fruit deformation and premature leaf and fruit drop, which enhance the susceptibility of the host plant to abiotic stress and secondary infection.";
        break;
      case 'Apple___Black_rot':
        precautions =
            "Black rot is an important disease of apple caused by the fungus Botryosphaeria obtusa. Black rot fungus infects a wide variety of hardwood trees, including apple and pear. Infected trees are often a source of infection for nearby younger bearing blocks. The black rot pathogen infects limbs, trunks, leaves and fruit resulting in reduced productivity and quality of yield. Leaf infections result in a disease called frog-eye leaf spot. ";
        break;
      case 'Apple___Cedar_apple_rust':
        precautions =
            "Cedar apple rust is a member of the family Pucciniaceae, a group of fungi that contains many species that usually require two or more hosts to complete the life cycle. Members of this family are known as rusts because the color of many is orange or reddish at some point in the life cycle. Many rusts are disease agents of crop plants including black stem rust of wheat, soybean rust and white pine blister rust.";
        break;
      case 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot':
        precautions =
            "Grey leaf spot (GLS) is a foliar fungal disease that affects maize, also known as corn. GLS is considered one of the most significant yield-limiting diseases of corn worldwide. There are two fungal pathogens that cause GLS: Cercospora zeae-maydis and Cercospora zeina Symptoms seen on corn include leaf lesions, discoloration.";
        break;
      case 'Corn_(maize)___Common_rust':
        precautions =
            "Common rust is caused by the fungus Puccinia sorghi and occurs every growing season. It is seldom a concern in hybrid corn. Rust pustules usually first appear in late June. Early symptoms of common rust are chlorotic flecks on the leaf surface. These soon develop into powdery, brick-red pustules as the spores break through the leaf surface.";
        break;
      case 'Corn_(maize)___Northern_Leaf_Blight':
        precautions =
            "The most common diagnostic symptom of the disease on corn is cigar-shaped or elliptical necrotic gray-green lesions on the leaves that range from one to seven inches long. These lesions may first appear as narrow, tan streaks that run parallel to the leaf veins.";
        break;
      case 'Potato___Early_blight':
        precautions =
            "Between crops, the early blight fungus can overwinter on potato refuse in the field, in soil, on tubers, and on other solanaceous plants. Infection occurs when spores of the fungus come in contact with susceptible leaves and sufficient free moisture is present.";
        break;
      case 'Potato___Late_blight':
        precautions =
            "Late blight is a deadly fungus that damages potatoes. It is available all around the world. It can be found in potato-growing regions around the world. In India, the main potato-growing season is winter. In the plains, it is followed by hot summer months. The fungus in the soil is killed by dryness and high temperatures.";
        break;
      case 'Grape__black_measles':
        precautions =
            "The foliar symptom of Esca is an interveinal striping. The stripes, which start out as dark red in red cultivars and yellow in white cultivars, dry and become necrotic. Foliar symptoms may occur at any time during the growing season, but are most prevalent during July and August. They are often restricted to an individual shoot or to shoots originating from the same spur or cane.";
        break;
      case 'Grape__black_rot':
        precautions =
            "Grape black rot is a fungal disease caused by an ascomycetous fungus, Guignardia bidwellii, that attacks grape vines during hot and humid weather. “Grape black rot originated in eastern North America, but now occurs in portions of Europe, South America, and Asia. It can cause complete crop loss in warm, humid climates, but is virtually unknown in regions with arid summers.";
        break;
      case 'Grape__leaf_blight_(isariopsis_leaf_spot)':
        precautions = "";
        break;
      case 'Tomato___Bacterial_spot':
        precautions =
            "Bacterial spot develops on seedlings and mature plants. On seedlings, infections may cause severe defoliation. On older plants, infections occur primarily on older leaves and appear as water-soaked areas.";
        break;
      case 'Tomato___Early_blight':
        precautions =
            "Symptoms of early blight can occur on the foliage, fruit, and stem at any stage of development. The disease is more commonly observed in the field, however, seedlings in the greenhouse can be affected by collar rot (also caused by species of Alternaria).Lesions first develop on lower leaves as small, brownish-black spots which can expand to about 1⁄4 - 1⁄2-inch in diameter with characteristic concentric rings in the darkened area.";
        break;
      case 'Tomato___Late_blight':
        precautions =
            "Symptoms of late blight may be found on any above-ground part of the tomato plant. Infected leaves typically have green to brown patches of dead tissue surrounded by a pale green or gray border. When the weather is very humid and wet, late blight infections can appear water-soaked or dark brown in color, and are often described as appearing greasy.";
        break;
      case 'Tomato___Leaf_Mold':
        precautions =
            "The tomato leaf mold fungus is a specific pathogen of tomato plant Lycopersicon, this pathogen has restricted host range (host specific pathogen) that only infects tomatoes, mainly in greenhouses. The symptoms of this disease commonly occurs on foliage, and it develops on both sides of the leaf on the adaxial and abaxial surface.";
        break;
      case 'Tomato___Septoria_leaf_spot':
        precautions =
            "Septoria leaf spot usually appears on the lower leaves after the first fruit sets. Spots are circular, about 1/16 to 1/4 inch in diameter with dark brown margins and tan to gray centers with small black fruiting structures. Characteristically, there are many spots per leaf.";
        break;
      case 'Tomato___Spider_mites Two-spotted_spider_mite':
        precautions =
            "The two-spotted spider mite is the most common mite species that attacks vegetable and fruit crops in New England. Spider mites can occur in tomato, eggplant, potato, vine crops such as melons, cucumbers, and other crops. Two-spotted spider mites are one of the most important pests of eggplant.";
        break;
      case 'Tomato___Target_Spot':
        precautions =
            "Target spot infections reduce yield indirectly by reducing the photosynthetic area and directly by reducing the fruit’s marketability through fruit spots. One study documented a 30% reduction in marketable yield and a 43% reduction in extra-large fruit when comparing production from treated and untreated plants.";
        break;
      case 'Tomato___Tomato_mosaic_virus':
        precautions =
            "The foliage of affected tomato plants shows mottling, with alternating yellowish and darker green areas, the latter often appearing thicker and raised giving a blister-like appearance. The leaves tend to be fern-like in appearance with pointed tips and younger leaves may be twisted.";
        break;
      case 'Tomato___Tomato_Yellow_Leaf_Curl_Virus':
        precautions =
            "Symptoms of TYLCV infection include severe stunting, reduction of leaf size, upward cupping/curling of leaves, chlorosis on leaves and flowers, and reduction of fruit production. This virus can cause significant yield losses from 90–100%, and it is estimated that about 7 million hectares can experience TYLCV infection or mixed virus infections annually. Treatments that are commonly used for this disease include insecticides, hybrid seeds, and growing tomatoes under greenhouse conditions.";
        break;
      case 'Rice___Neck_Blast':
        precautions =
            "The symptoms of rice blast include lesions that can be found on all parts of the plant, including leaves, leaf collars, necks, panicles, pedicels, and seeds. A recent report shows that even roots can become infected. However, the most common and diagnostic symptom, diamond shaped lesions, of rice blast occur on the leaves, whereas lesions on the sheaths are relatively rare.";
        break;
      case 'Rice___Leaf_Blast':
        precautions =
            "The symptoms of rice blast include lesions that can be found on all parts of the plant, including leaves, leaf collars, necks, panicles, pedicels, and seeds. A recent report shows that even roots can become infected. However, the most common and diagnostic symptom, diamond shaped lesions, of rice blast occur on the leaves, whereas lesions on the sheaths are relatively rare..";
        break;
      case 'Rice___Brown_Spot':
        precautions =
            "Brown spot is an indicator of unfavorable growing conditions, including insufficient nitrogen, inability of the plants to use nitrogen because of rice water weevil injury, root rot or other unfavorable soil conditions.";
        break;
      case 'Wheat___Yellow_Rust(Stripe Rust)':
        precautions =
            "The characteristic symptom of yellow rust is of parallel rows of yellowish orange coloured pustules on the leaves of adult plants. Epidemics of yellow rust often start as individual plants, usually in the autumn. Symptoms develop slowly over winter and are often missed until the early spring when small patches or foci of infected plants can be seen in fields. These patches usually spread in the direction of prevailing wind.";
        break;
      case 'Wheat___Brown_Rust':
        precautions =
            "Plant breeders have tried to improve yield quantities in crops like wheat from the earliest times In recent years, breeding for resistance against disease proved to be as important for total wheat production as breeding for increase in yield. The use of a single resistance gene against various pests and diseases plays a major role in resistance breeding for cultivated crops.";
        break;
      case 'Wheat_Septoria':
        precautions =
            "Septoria often results in elongated, oval septoria lesions that are restricted by leaf veins, giving a rectangular appearance. Water-soaked patches often form, surrounded by leaf yellowing or death. Lesions may coalesce to form large areas of necrotic brown tissue.";
        break;
      
    }
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(201, 239, 204, 1),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Result",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Predict Disease",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 25,
            ),
            Image.file(widget.image),
            SizedBox(
              height: 25,
            ),
            Card(
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Predicted Disease:- ",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.result.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),SizedBox(height: 50,),
            Card(
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),SizedBox(height: 10,),
                      Text(
                        precautions.toString(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Search(
                              
                            )));
            }, child: Text("Nearby Pesticide"))
          ],
        ),
      ),
    );
  }
}
