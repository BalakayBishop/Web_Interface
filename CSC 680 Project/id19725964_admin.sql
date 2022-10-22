-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2022 at 06:52 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19725964_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(10) NOT NULL,
  `color` varchar(50) NOT NULL,
  `flower_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`, `flower_id`) VALUES
(1, 'Red', 1),
(2, 'White', 1),
(3, 'Yellow', 1),
(4, 'Pink', 1),
(5, 'Yellow', 2),
(6, 'Purple', 3),
(7, 'Yellow', 3),
(8, 'White', 3),
(9, 'White', 4),
(10, 'Pink', 4),
(11, 'Red', 4),
(12, 'White', 5),
(13, 'Pink', 5),
(14, 'Yellow', 5),
(15, 'Pink', 6),
(16, 'Red', 6),
(17, 'Yellow', 6),
(18, 'Purple', 7),
(19, 'Pink', 8),
(20, 'Yellow', 8),
(21, 'Orange', 8),
(22, 'Orange', 9),
(23, 'Yellow', 9),
(24, 'Red', 9),
(25, 'White', 10),
(140, 'Yellow', 10),
(141, 'Red', 10);

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `scientific_name` varchar(50) NOT NULL,
  `season` int(2) NOT NULL,
  `inside_outside` int(2) NOT NULL,
  `shade_sun` int(2) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`id`, `name`, `scientific_name`, `season`, `inside_outside`, `shade_sun`, `description`, `link`) VALUES
(1, 'Rose', 'Rosa', 1, 2, 1, 'A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles. Their flowers vary in size and shape and are usually large and showy, in colours ranging from white through yellows and reds. Most species are native to Asia, with smaller numbers native to Europe, North America, and northwestern Africa. Species, cultivars and hybrids are all widely grown for their beauty and often are fragrant. Roses have acquired cultural significance in many societies. Rose plants range in size from compact, miniature roses, to climbers that can reach seven meters in height. Different species hybridize easily, and this has been used in the development of the wide range of garden roses. The leaves are borne alternately on the stem. In most species they are 5 to 15 centimetres (2.0 to 5.9 in) long, pinnate, with (3–) 5–9 (–13) leaflets and basal stipules; the leaflets usually have a serrated margin, and often a few small prickles on the underside of the stem. Most roses are deciduous but a few (particularly from Southeast Asia) are evergreen or nearly so. The flowers of most species have five petals, with the exception of Rosa sericea, which usually has only four. Each petal is divided into two distinct lobes and is usually white or pink, though in a few species yellow or red. Beneath the petals are five sepals (or in the case of some Rosa sericea, four). These may be long enough to be visible when viewed from above and appear as green points alternating with the rounded petals. There are multiple superior ovaries that develop into achenes. Roses are insect-pollinated in nature.The aggregate fruit of the rose is a berry-like structure called a rose hip. Many of the domestic cultivars do not produce hips, as the flowers are so tightly petalled that they do not provide access for pollination. The hips of most species are red, but a few (e.g. Rosa pimpinellifolia) have dark purple to black hips. Each hip comprises an outer fleshy layer, the hypanthium, which contains 5–160 \"seeds\" (technically dry single-seeded fruits called achenes) embedded in a matrix of fine, but stiff, hairs. Rose hips of some species, especially the dog rose (Rosa canina) and rugosa rose (Rosa rugosa), are very rich in vitamin C, among the richest sources of any plant. The hips are eaten by fruit-eating birds such as thrushes and waxwings, which then disperse the seeds in their droppings. Some birds, particularly finches, also eat the seeds. The sharp growths along a rose stem, though commonly called \"thorns\", are technically prickles, outgrowths of the epidermis (the outer layer of tissue of the stem), unlike true thorns, which are modified stems. Rose prickles are typically sickle-shaped hooks, which aid the rose in hanging onto other vegetation when growing over it. Some species such as Rosa rugosa and Rosa pimpinellifolia have densely packed straight prickles, probably an adaptation to reduce browsing by animals, but also possibly an adaptation to trap wind-blown sand and so reduce erosion and protect their roots (both of these species grow naturally on coastal sand dunes). Despite the presence of prickles, roses are frequently browsed by deer. A few species of roses have only vestigial prickles that have no points.', 'https://www.teahub.io/photos/full/129-1294813_red-rose-macro-shoot-ipad-air-wallpaper-all.jpg'),
(2, 'Sunflower', 'Helianthus', 1, 2, 1, 'Helianthus (/ˌhiːliˈænθəs/) is a genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae commonly known as sunflowers. Except for three South American species, the species of Helianthus are native to North America and Central America. The best-known species is the common sunflower (Helianthus annuus), whose round flower heads in combination with the ligules look like the Sun. This and other species, notably Jerusalem artichoke (H. tuberosus), are cultivated in temperate regions and some tropical regions, as food crops for humans, cattle, and poultry, and as ornamental plants. The species H. annuus typically grows during the summer and into early fall, with the peak growth season being mid-summer. Several perennial Helianthus species are grown in gardens, but have a tendency to spread rapidly and can become aggressive. On the other hand, the whorled sunflower, Helianthus verticillatus, was listed as an endangered species in 2014 when the U.S. Fish and Wildlife Service issued a final rule protecting it under the Endangered Species Act. The primary threats are industrial forestry and pine plantations in Alabama, Georgia, and Tennessee. They grow to 1.8 metres (6 feet) and are primarily found in woodlands, adjacent to creeks and moist, prairie-like areas. The common sunflower is the national flower of Ukraine, cultivated there for several centuries. Sunflowers are usually tall annual or perennial plants that in some species can grow to a height of 300 centimetres (120 inches) or more. Each \"flower\" is actually a disc made up of tiny flowers, to form a larger false flower to better attract pollinators. The plants bear one or more wide, terminal capitula (flower heads made up of many tiny flowers), with bright yellow ray florets (mini flowers inside a flower head) at the outside and yellow or maroon (also known as a brown/red) disc florets inside. Several ornamental cultivars of H. annuus have red-colored ray florets; all of them stem from a single original mutant. While the majority of sunflowers are yellow, there are branching varieties in other colours including, orange, red and purple. The petiolate leaves are dentate and often sticky. The lower leaves are opposite, ovate, or often heart-shaped. The rough and hairy stem is branched in the upper part in wild plants, but is usually unbranched in domesticated cultivars. This genus is distinguished technically by the fact that the ray florets (when present) are sterile, and by the presence on the disk flowers of a pappus that is of two awn-like scales that are caducous (that is, easily detached and falling at maturity). Some species also have additional shorter scales in the pappus, and one species lacks a pappus entirely. Another technical feature that distinguishes the genus more reliably, but requires a microscope to see, is the presence of a prominent, multicellular appendage at the apex of the style. Further, the florets of a sunflower are arranged in a natural spiral. Variability is seen among the perennial species that make up the bulk of those in the genus. Some have most or all of the large leaves in a rosette at the base of the plant and produce a flowering stem that has leaves that are reduced in size. Most of the perennials have disk flowers that are entirely yellow, but a few have disk flowers with reddish lobes. One species, H. radula, lacks ray flowers altogether. Overall, the macroevolution of the Heliabthus is driven by multiple biotic and abiotic factors and influences various floral morphology. Helianthus species are used as food plants by the larvae of many lepidopterans.', 'https://norfolkbotanicalgarden.org/wp-content/uploads/2022/08/3-1024x1024.png'),
(3, 'Iris', 'Iris', 2, 1, 1, 'Iris is a flowering plant genus of 310 accepted species with showy flowers. As well as being the scientific name, iris is also widely used as a common name for all Iris species, as well as some belonging to other closely related genera. A common name for some species is \'flags\', while the plants of the subgenus Scorpiris are widely known as \'junos\', particularly in horticulture. It is a popular garden flower. The often-segregated, monotypic genera Belamcanda (blackberry lily, I. domestica), Hermodactylus (snake\'s head iris, I. tuberosa), and Pardanthopsis (vesper iris, I. dichotoma) are currently included in Iris. Three Iris varieties are used in the Iris flower data set outlined by Ronald Fisher in his 1936 paper The use of multiple measurements in taxonomic problems as an example of linear discriminant analysis. Irises are perennial plants, growing from creeping rhizomes (rhizomatous irises) or, in drier climates, from bulbs (bulbous irises). They have long, erect flowering stems which may be simple or branched, solid or hollow, and flattened or have a circular cross-section. The rhizomatous species usually have 3–10 basal sword-shaped leaves growing in dense clumps. The bulbous species also have 2–10 narrow leaves growing from the bulb. The inflorescences are in the shape of a fan and contain one or more symmetrical six-lobed flowers. These grow on a pedicel or peduncle. The three sepals, which are usually spreading or droop downwards, are referred to as \"falls\". They expand from their narrow base (the \"claw\" or \"haft\"), into a broader expanded portion (\"limb\" or \"blade\") and can be adorned with veining, lines or dots. In the centre of the blade, some of the rhizomatous irises have a \"beard\", a row of fuzzy hairs at the base of each falls petal which gives pollinators a landing place and guides them to the nectar. The three, sometimes reduced, petals stand upright, partly behind the sepal bases. They are called \"standards\". Some smaller iris species have all six lobes pointing straight outwards, but generally limb and standards differ markedly in appearance. They are united at their base into a floral tube that lies above the ovary (known as an epigynous or inferior ovary). The three styles divide towards the apex into petaloid branches; this is significant in pollination. The iris flower is of interest as an example of the relation between flowering plants and pollinating insects. The shape of the flower and the position of the pollen-receiving and stigmatic surfaces on the outer petals form a landing-stage for a flying insect, which in probing for nectar, will first come into contact with the perianth, then with the three stigmatic stamens in one whorled surface which is borne on an ovary formed of three carpels. The shelf-like transverse projection on the inner whorled underside of the stamens is beneath the overarching style arm below the stigma, so that the insect comes in contact with its pollen-covered surface only after passing the stigma; in backing out of the flower it will come in contact only with the non-receptive lower face of the stigma. Thus, an insect bearing pollen from one flower will, in entering a second, deposit the pollen on the stigma; in backing out of a flower, the pollen which it bears will not be rubbed off on the stigma of the same flower. The iris fruit is a capsule which opens up in three parts to reveal the numerous seeds within. In some species, the seeds bear an aril. Such as Iris stolonifera which as light brown seeds that have thick white aril (or coatings).', 'https://cdn.shopify.com/s/files/1/0739/9053/products/Blue-iris-1_1024x1024.jpg?v=1478538058'),
(4, 'Poinsettia', 'Euphorbia Pulcherrima', 1, 2, 1, 'The poinsettia (/pɔɪnˈsɛtiə/ or /pɔɪnˈsɛtə/) (Euphorbia pulcherrima) is a commercially important plant species of the diverse spurge family (Euphorbiaceae). Indigenous to Mexico and Central America, the poinsettia was first described by Europeans in 1834. It is particularly well known for its red and green foliage and is widely used in Christmas floral displays. It derives its common English name from Joel Roberts Poinsett, the first United States Minister to Mexico, who is credited with introducing the plant to the US in the 1820s. Poinsettias are shrubs or small trees, with heights of 0.6–4 m (2.0–13.1 ft). Though often stated to be highly toxic, the poinsettia is not dangerous to pets or children. Exposure to the plant, even consumption, most often results in no effect, though it can cause nausea, vomiting, or diarrhea. Wild poinsettias occur from Mexico to southern Guatemala, growing on mid-elevation, Pacific-facing slopes. One population in the Mexican state of Guerrero is much further inland, however, and is thought to be the ancestor of most cultivated populations. Wild poinsettia populations are highly fragmented, as their habitat is experiencing largely unregulated deforestation. They were cultivated by the Aztecs for use in traditional medicine. They became associated with the Christmas holiday and are popular seasonal decorations. Every year in the US, approximately 70 million poinsettias of many cultivated varieties are sold in a six-week period. Many of these poinsettias are grown by Paul Ecke Ranch, which serves half the worldwide market and 70% of the US market. Euphorbia pulcherrima is a shrub or small tree, typically reaching a height of 0.6–4 metres (2–13 ft). The plant bears dark green dentate leaves that measure 7–16 centimetres (2.8–6.3 in) in length. The colored bracts—which are normally flaming red, with cultivars being orange, pale green, cream, pink, white, or marbled—are often mistaken for flower petals because of their groupings and colors, but are actually leaves. The colors of the bracts are created through photoperiodism, meaning that they require darkness (at least fourteen hours at a time for 6–8 weeks in a row) to change color. The plants also require abundant light during the day for the brightest color. The flowers of the poinsettia are unassuming. They are grouped within the cyathia (small yellow structures found in the center of each leaf bunch, or false flowers). Nothing is known about pollination in wild poinsettias, though wasps are noted to occasionally visit the cyathia. All flowers in the Euphorbiaceae are unisexual (either male or female only), and they are often very small in size. In Euphorbia, the flowers are reduced even more and then aggregated into an inflorescence or cluster of flowers. The poinsettia was described as a new species in 1834 by German scientist Johann Friedrich Klotzsch. Klotzsch credited Carl Ludwig Willdenow with the species name \"pulcherrima\", and the authority is given as Willd. ex Klotzsch. The holotype had been collected in Mexico during an 1803–1804 expedition by Alexander von Humboldt and Aimé Bonpland. It was known by the common name \"poinsettia\" as early as 1836, derived from Joel Roberts Poinsett, a botanist and the first US Minister to Mexico. Possibly as early as 1826, Poinsett began sending poinsettias from Mexico back to his greenhouses in South Carolina. Prior to poinsettia, it was known as \"Mexican flame flower\" or \"painted leaf\".', 'https://cdn.shopify.com/s/files/1/0789/1541/products/IMG_3391_1024x1024.jpg?v=1661789983'),
(5, 'Daisy', 'Bellis Peresnnis', 3, 1, 1, 'Bellis perennis is a perennial herbaceous plant growing to 20 centimetres (8 inches) in height. It has short creeping rhizomes and rosettes of small rounded or spoon-shaped leaves that are from 2 to 5 cm (3⁄4–2 in) long and grow flat to the ground. The species habitually colonises lawns, and is difficult to eradicate by mowing, hence the term \'lawn daisy\'. It blooms from March to September[2] and exhibits the phenomenon of heliotropism, in which the flowers follow the position of the sun in the sky. The flowerheads are composite, about 2 to 3 cm (3⁄4–1+1⁄4 in) in diameter, in the form of a pseudanthium, consisting of many sessile flowers with white ray florets (often tipped red) and yellow disc florets. Each inflorescence is borne on a single leafless stem 2 to 10 cm (3⁄4–4 in), rarely 15 cm (6 in) tall. The capitulum, or disc of florets, is surrounded by two rows of green bracts known as \"phyllaries\". The achenes are without pappus. Bellis perennis is a perennial herbaceous plant growing to 20 centimetres (8 inches) in height. It has short creeping rhizomes and rosettes of small rounded or spoon-shaped leaves that are from 2 to 5 cm (3⁄4–2 in) long and grow flat to the ground. The species habitually colonises lawns, and is difficult to eradicate by mowing, hence the term \'lawn daisy\'. It blooms from March to September and exhibits the phenomenon of heliotropism, in which the flowers follow the position of the sun in the sky. The flowerheads are composite, about 2 to 3 cm (3⁄4–1+1⁄4 in) in diameter, in the form of a pseudanthium, consisting of many sessile flowers with white ray florets (often tipped red) and yellow disc florets. Each inflorescence is borne on a single leafless stem 2 to 10 cm (3⁄4–4 in), rarely 15 cm (6 in) tall. The capitulum, or disc of florets, is surrounded by two rows of green bracts known as \"phyllaries\". The achenes are without pappus. The species generally blooms from early to midsummer, although when grown under ideal conditions, it has a very long flowering season and will even produce a few flowers in the middle of mild winters. It can generally be grown where minimum temperatures are above −35 °C (−30 °F), in full sun to partial shade conditions, and requires little or no maintenance. It has no known serious insect or disease problems and can generally be grown in most well-drained soils. The plant may be propagated either by seed after the last frost, or by division after flowering. Though not native to the United States, the species is still considered a valuable ground cover in certain garden settings (e.g., as part of English or cottage inspired gardens, as well as spring meadows where low growth and some color is desired in parallel with minimal care and maintenance while helping to crowd out noxious weeds once established and naturalised). Numerous single- and double-flowered varieties are in cultivation, producing flat or spherical blooms in a range of sizes (1 to 6 cm or 3⁄8 to 2+3⁄8 in) and colours (red, pink and white). They are generally grown from seed as biennial bedding plants. They can also be purchased as plugs in Spring. It has been reported to be mostly self-fertilizing, but some plants may be self-sterile.', 'https://cdn.shopify.com/s/files/1/0266/4277/6145/products/S24218-1024-1024-01_5000x.jpg?v=1654030714'),
(6, 'Carnation', 'Dianthus Caryophyllus', 1, 2, 1, 'Dianthus caryophyllus, commonly known as the carnation or clove pink, is a species of Dianthus. It is likely native to the Mediterranean region but its exact range is unknown due to extensive cultivation for the last 2,000 years. Dianthus caryophyllus is a herbaceous perennial plant growing up to 80 cm (31+1⁄2 in) tall. The leaves are glaucous greyish green to blue-green, slender, up to 15 cm (6 in) long. The flowers are produced singly or up to five together in a cyme; they are around 3–5 cm (1+1⁄4–2 in) diameter, and sweetly scented; the original natural flower color is bright pinkish-purple, but cultivars of other colors, including red, white, yellow, blue and green, along with some white with colored striped variations have been developed. The fragrant, hermaphrodite flowers have a radial symmetry. The four to six surrounding the calyx, egg-shaped, sting-pointed scales leaves are only ¼ as long as the calyx tube. Carnations were mentioned in Greek literature 2,000 years ago. The term dianthus was coined by Greek botanist Theophrastus, and is derived from the Ancient Greek words for divine (\"dios\") and flower (\"anthos\"). The name \"carnation\" is believed to come from the Latin corona-ae, a \"wreath, garland, chaplet, crown\", as it was one of the flowers used in Greek and Roman ceremonial crowns, or possibly from the Latin caro (genitive carnis), \"flesh\", which refers to the natural colour of the flower, or in Christian iconography incarnatio, \"incarnation\", God made flesh in the form of Jesus. Carl Linnaeus described the carnation in volume one of his Species Plantarum in 1753, giving it the name Dianthus caryophyllus. Although originally applied to the species Dianthus caryophyllus, the name carnation is also often applied to some of the other species of Dianthus, and more particularly to garden hybrids between D. caryophyllus and other species in the genus. Carnations require well-drained, neutral to slightly alkaline soil, and full sun. Numerous cultivars have been selected for garden planting. Typical examples include \'Gina Porto\', \'Helen\', \'Laced Romeo\', and \'Red Rocket\'. They are used for medical purposes, such as for upset stomach and fever. Their fragrance was historically used for vinegar, beer, wine, sauces and salads. Crossbreeding D. caryophyllus with D. capitatus results in a hybrid that is resistant to bacterial wilt from Paraburkholderia caryophylli. However, the flower is less attractive and so more breeding and backcrossing is needed to improve the flower.Carnation cultivars with no fragrance are often used by men as boutonnières or \"buttonholes\".', 'https://cdn.shopify.com/s/files/1/2174/6775/products/50-carnation-rose-seeds-1_1024x1024@2x.jpg?v=1647999764'),
(7, 'Lavender', 'Lavendula', 1, 2, 1, 'Lavandula (common name lavender) is a genus of 47 known species of flowering plants in the mint family, Lamiaceae. It is native to the Old World and is found in Cape Verde and the Canary Islands, and from Europe across to northern and eastern Africa, the Mediterranean, southwest Asia to India. Many members of the genus are cultivated extensively in temperate climates as ornamental plants for garden and landscape use, for use as culinary herbs, and also commercially for the extraction of essential oils. The most widely cultivated species, Lavandula angustifolia, is often referred to as lavender, and there is a color named for the shade of the flowers of this species. Lavender has been used over centuries in traditional medicine and cosmetics. The genus includes annual or short-lived herbaceous perennial plants, and shrub-like perennials, subshrubs or small shrubs. Leaf shape is diverse across the genus. They are simple in some commonly cultivated species; in other species, they are pinnately toothed, or pinnate, sometimes multiple pinnate and dissected. In most species, the leaves are covered in fine hairs or indumentum, which normally contain essential oils. Flowers are contained in whorls, held on spikes rising above the foliage, the spikes being branched in some species. Some species produce colored bracts at the tips of the inflorescences. The flowers may be blue, violet or lilac in the wild species, occasionally blackish purple or yellowish. The calyx is tubular. The corolla is also tubular, usually with five lobes (the upper lip often cleft, and the lower lip has two clefts). Lavandula stoechas, L. pedunculata, and L. dentata were known in Roman times. From the Middle Ages onwards, the European species were considered two separate groups or genera, Stoechas (L. stoechas, L. pedunculata, L. dentata) and Lavandula (L. spica and L. latifolia), until Linnaeus combined them. He recognised only five species in Species Plantarum (1753), L. multifida and L. dentata (Spain) and L. stoechas and L. spica from Southern Europe. L. pedunculata was included within L. stoechas. By 1790, L. pinnata and L. carnosa were recognised. The latter was subsequently transferred to Anisochilus. By 1826, Frédéric Charles Jean Gingins de la Sarraz listed 12 species in three sections, and by 1848 eighteen species were known. One of the first modern major classifications was that of Dorothy Chaytor in 1937 at Kew. The six sections she proposed for 28 species still left many intermediates that could not easily be assigned. Her sections included Stoechas, Spica, Subnudae, Pterostoechas, Chaetostachys, and Dentatae. However, all the major cultivated and commercial forms resided in the Stoechas and Spica sections. There were four species within Stoechas (Lavandula stoechas, L. dentata, L. viridis, and L. pedunculata) while Spica had three (L. officinalis (now L. angustifolia), L. latifolia and L. lanata). She believed that the garden varieties were hybrids between true lavender L. angustifolia and spike lavender (L. latifolia). The first major clade corresponds to subgenus Lavandula, and the second Fabricia. The Sabaudia group is less clearly defined. Within the Lavandula clade, the subclades correspond to the existing sections but place Dentatae separately from Stoechas, not within it. Within the Fabricia clade, the subclades correspond to Pterostoechas, Subnudae, and Chaetostachys. Thus the current classification includes 39 species distributed across 8 sections (the original 6 of Chaytor and the two new sections of Upson and Andrews), in three subgenera (see table below). However, since lavender cross-pollinates easily, countless variations present difficulties in classification.', 'https://cdn.shopify.com/s/files/1/2550/8730/products/herb_lavender_pixabay@2x.jpg?v=1622144053'),
(8, 'Tulip', 'Tulipa', 3, 2, 1, 'Tulips (Tulipa) are a genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs). The flowers are usually large, showy and brightly coloured, generally red, pink, yellow, or white (usually in warm colours). They often have a different coloured blotch at the base of the tepals (petals and sepals, collectively), internally. Because of a degree of variability within the populations, and a long history of cultivation, classification has been complex and controversial. The tulip is a member of the lily family, Liliaceae, along with 14 other genera, where it is most closely related to Amana, Erythronium and Gagea in the tribe Lilieae. There are about 75 species, and these are divided among four subgenera. The name \"tulip\" is thought to be derived from a Persian word for turban, which it may have been thought to resemble by those who discovered it. Tulips originally were found in a band stretching from Southern Europe to Central Asia, but since the seventeenth century have become widely naturalised and cultivated (see map). In their natural state they are adapted to steppes and mountainous areas with temperate climates. Flowering in the spring, they become dormant in the summer once the flowers and leaves die back, emerging above ground as a shoot from the underground bulb in early spring. Growing wild over much of the Near East and Central Asia, tulips were cultivated in Constantinople as early as 1055. By the 15th century, tulips were among the most prized flowers; becoming the symbol of the Ottomans. While tulips had probably been cultivated in Persia from the tenth century, they did not come to the attention of the West until the sixteenth century, when Western diplomats to the Ottoman court observed and reported on them. They were rapidly introduced into Europe and became a frenzied commodity during tulip mania. Tulips were frequently depicted in Dutch Golden Age paintings, and have become associated with the Netherlands, the major producer for world markets, ever since. In the seventeenth century Netherlands, during the time of the tulip mania, an infection of tulip bulbs by the tulip breaking virus created variegated patterns in the tulip flowers that were much admired and valued. While truly broken tulips do not exist anymore, the closest available specimens today are part of the group known as the Rembrandts – so named because Rembrandt painted some of the most admired breaks of his time. Breeding programmes have produced thousands of hybrid and cultivars in addition to the original species (known in horticulture as botanical tulips). They are popular throughout the world, both as ornamental garden plants and as cut flowers. Tulipa (tulips) is a genus of spring-blooming perennial herbaceous bulbiferous geophytes, dying back after flowering to an underground storage bulb. Depending on the species, tulip plants can be between 10 and 70 cm (4 and 28 inches) high. Flowers: The tulip\'s flowers are usually large and are actinomorphic (radially symmetric) and hermaphrodite (contain both male (androecium) and female (gynoecium) characteristics), generally erect, or more rarely pendulous, and are arranged more usually as a single terminal flower, or when pluriflor as two to three (e.g. Tulipa turkestanica), but up to four, flowers on the end of a floriferous stem (scape), which is single arising from amongst the basal leaf rosette. In structure, the flower is generally cup or star shaped. As with other members of Liliaceae the perianth is undifferentiated (perigonium) and biseriate (two whorled), formed from six free (i.e. apotepalous) caducous tepals arranged into two separate whorls of three parts (trimerous) each. The two whorls represent three petals and three sepals, but are termed tepals because they are nearly identical. The tepals are usually petaloid (petal like), being brightly coloured, but each whorl may be different, or have different coloured blotches at their bases, forming darker colouration on the interior surface. The inner petals have a small, delicate cleft at the top, while the sturdier outer ones form uninterrupted ovals.', 'https://www.colorblends.com/wp-content/uploads/2020/01/1206_YourImminence_CGC6500sq-1024x1024.jpg'),
(9, 'Marigold', 'Tagetes', 1, 2, 1, 'Tagetes (/tæˈdʒiːtiːz/) is a genus[2] of annual or perennial, mostly herbaceous plants in the family Asteraceae. They are among several groups of plants known in English as marigolds. The genus Tagetes was described by Carl Linnaeus in 1753. The plants are native to the Americas, growing naturally from the southwestern United States into South America, but some species have become naturalized around the world. One species, T. minuta, is considered a noxious invasive plant in some areas. Tagetes species vary in size from 0.1 to 2.2 m tall. Most species have pinnate green leaves. Blooms naturally occur in golden, orange, yellow, and white colors, often with maroon highlights. Floral heads are typically (1-) to 4–6 cm diameter, generally with both ray florets and disc florets. In horticulture, they tend to be planted as annuals, although the perennial species are gaining popularity. They have fibrous roots. Depending on the species, Tagetes species grow well in almost any sort of soil. Most horticultural selections grow best in soil with good drainage, and some cultivars are known to have good tolerance to drought. Depending on the species, marigold foliage has a musky, pungent scent, though some varieties have been bred to be scentless. It is said to deter some common insect pests, as well as nematodes.[citation needed] Tagetes species — notably T. patula — are hence often used in companion planting for tomato, eggplant, chili pepper, tobacco, and potato. Due to antibacterial thiophenes exuded by the roots, Tagetes should not be planted near any legume crop. Some of the perennial species are deer-, rabbit-, rodent- and javelina or peccary-resistant. T. minuta (khakibush or huacatay), originally from South America, has been used as a source of essential oil for the perfume and industry known as tagette or \"marigold oil\", and as a flavourant in the food and tobacco industries. It is commonly cultivated in South Africa, where the species is also a useful pioneer plant in the reclamation of disturbed land. Gonepteryx rhamni sucking nectar - The florets of Tagetes erecta are rich in the orange-yellow carotenoid lutein and are used as a food colour (INS number E161b) in the European Union for foods such as pasta, vegetable oil, margarine, mayonnaise, salad dressing, baked goods, confectionery, dairy products, ice cream, yogurt, citrus juice and mustard. In the United States, however, the powders and extracts are only approved as colorants in poultry feed. Marigolds are recorded as a food plant for some Lepidoptera caterpillars including the dot moth, and a nectar source for other butterflies and bumblebees. They are often part of butterfly gardening plantings. In the wild, many species are pollinated by beetles. The Latin Tagētes derives from the name of the Etruscan Tages, born from the plowing of the earth. It likely refers to the ease with which plants of this genus come out each year either by the seeds produced in the previous year, or by the stems which regrow from the stump already in place.', 'https://live.staticflickr.com/3846/15215508436_d23c80ae32_b.jpg'),
(10, 'Lily', 'Lilium', 3, 2, 1, 'Lilium is a genus of herbaceous flowering plants growing from bulbs, all with large prominent flowers. They are the true lilies. Lilies are a group of flowering plants which are important in culture and literature in much of the world. Most species are native to the northern hemisphere and their range is temperate climates and extends into the subtropics. Many other plants have \"lily\" in their common names, but do not belong to the same genus and are therefore not true lilies. Lilies are tall perennials ranging in height from 2–6 ft (60–180 cm). They form naked or tunicless scaly underground bulbs which are their organs of perennation. In some North American species the base of the bulb develops into rhizomes, on which numerous small bulbs are found. Some species develop stolons. Most bulbs are buried deep in the ground, but a few species form bulbs near the soil surface. Many species form stem-roots. With these, the bulb grows naturally at some depth in the soil, and each year the new stem puts out adventitious roots above the bulb as it emerges from the soil. These roots are in addition to the basal roots that develop at the base of the bulb. Lily, petal. The flowers are large, often fragrant, and come in a wide range of colors including whites, yellows, oranges, pinks, reds and purples. Markings include spots and brush strokes. The plants are late spring- or summer-flowering. Flowers are borne in racemes or umbels at the tip of the stem, with six tepals spreading or reflexed, to give flowers varying from funnel shape to a \"Turk\'s cap\". The tepals are free from each other, and bear a nectary at the base of each flower. The ovary is \'superior\', borne above the point of attachment of the anthers. The fruit is a three-celled capsule. Stamen of Lilium - Seeds ripen in late summer. They exhibit varying and sometimes complex germination patterns, many adapted to cool temperate climates. Most cool temperate species are deciduous and dormant in winter in their native environment. But a few species native to areas with hot summers and mild winters (Lilium candidum, Lilium catesbaei, Lilium longiflorum) lose their leaves and enter a short dormant period in summer or autumn, sprout from autumn to winter, forming dwarf stems bearing a basal rosette of leaves until, after they have received sufficient chilling, the stem begins to elongate in warming weather. Taxonomical division in sections follows the classical division of Comber, species acceptance follows the World Checklist of Selected Plant Families, the taxonomy of section Pseudolirium is from the Flora of North America, the taxonomy of Section Liriotypus is given in consideration of Resetnik et al. 2007, the taxonomy of Chinese species (various sections) follows the Flora of China and the taxonomy of Section Sinomartagon follows Nishikawa et al. as does the taxonomy of Section Archelirion. The World Checklist of Selected Plant Families, as of January 2014, considers Nomocharis a separate genus in its own right, however some authorities consider Nomocharis to be embedded within Lilium, rather than treat it as a separate genus. The Sinomartagon are divided in 3 paraphyletic groups , while the Leucolirion are divided in 2 paraphyletic groups.', 'https://mobileimages.lowes.com/productimages/139fc9fd-9d35-4804-b76c-1a29ecf5c5d2/09505950.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `inside_outside`
--

CREATE TABLE `inside_outside` (
  `id` int(10) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inside_outside`
--

INSERT INTO `inside_outside` (`id`, `location`) VALUES
(1, 'Intside'),
(2, 'Outside');

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`id`, `name`) VALUES
(1, 'Spring'),
(2, 'Summer'),
(3, 'Fall'),
(4, 'Winter');

-- --------------------------------------------------------

--
-- Table structure for table `shade_sun`
--

CREATE TABLE `shade_sun` (
  `id` int(10) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shade_sun`
--

INSERT INTO `shade_sun` (`id`, `location`) VALUES
(1, 'Full Sun'),
(2, 'Shade');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `io_fk` (`inside_outside`),
  ADD KEY `ss_fk` (`shade_sun`),
  ADD KEY `season_fk` (`season`);

--
-- Indexes for table `inside_outside`
--
ALTER TABLE `inside_outside`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shade_sun`
--
ALTER TABLE `shade_sun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inside_outside`
--
ALTER TABLE `inside_outside`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shade_sun`
--
ALTER TABLE `shade_sun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flowers`
--
ALTER TABLE `flowers`
  ADD CONSTRAINT `io_fk` FOREIGN KEY (`inside_outside`) REFERENCES `inside_outside` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `season_fk` FOREIGN KEY (`season`) REFERENCES `season` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ss_fk` FOREIGN KEY (`shade_sun`) REFERENCES `shade_sun` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
