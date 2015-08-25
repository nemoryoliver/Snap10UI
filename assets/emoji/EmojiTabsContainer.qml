import bb.cascades 1.2

Container 
{  
    id: rootEmojiTabsContainer
    layout: StackLayout { orientation: LayoutOrientation.LeftToRight }
    horizontalAlignment: HorizontalAlignment.Fill
    topPadding: 6
    bottomPadding: 6
    leftPadding: 6
    rightPadding: 6
    
    property variant peopleArray;
    property variant natureArray;
    property variant objectsArray;
    property variant placesArray;
    property variant symbolsArray;
    
    signal bbmEmoticonsClicked1();
    signal closeKeyboardClicked();
    signal emojiTabClicked(string tabName, variant tabOrder);
    
    onCreationCompleted: 
    {
        peopleArray     = people();
        natureArray     = nature();
        objectsArray    = objects();
        placesArray     = places();
        symbolsArray    = symbols();
        
        rootEmojiTabsContainer.controls[0].emojiTabClicked();
    }
    
    function handleSelection() 
    {
        for (var i=0; i<rootEmojiTabsContainer.controls.length; i++)
        rootEmojiTabsContainer.controls[i].selected = false
    }
    
    EmojiTabButton 
    {
        sourceDirectory: "asset:///emoji/images/people/"
        tabButtonImageSource: "asset:///emoji/images/emoji_category_people.png"
        orderList: peopleArray
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(sourceDirectory, orderList)
        }
    }
    
    EmojiTabButton 
    {
        sourceDirectory: "asset:///emoji/images/nature/"
        tabButtonImageSource: "asset:///emoji/images/emoji_category_nature.png"
        orderList: natureArray
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(sourceDirectory, orderList)
        }
    }
    
    EmojiTabButton
    {
        sourceDirectory: "asset:///emoji/images/objects/"
        tabButtonImageSource: "asset:///emoji/images/emoji_category_objects.png"
        orderList: objectsArray
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected =
            true
            rootEmojiTabsContainer.emojiTabClicked(sourceDirectory, orderList)
        }
    }
    
    EmojiTabButton 
    {
        sourceDirectory: "asset:///emoji/images/places/"
        tabButtonImageSource: "asset:///emoji/images/emoji_category_places.png"
        orderList: placesArray
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(sourceDirectory, orderList)
        }
    }
    
    EmojiTabButton 
    {
        sourceDirectory: "asset:///emoji/images/symbols/"
        tabButtonImageSource: "asset:///emoji/images/emoji_category_symbols.png"
        orderList: symbolsArray
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(sourceDirectory, orderList)
        }
    }
    
    EmojiTabButton 
    {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_bbm.png"
        preferredHeight: 20
        
        onEmojiTabClicked: 
        {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            bbmEmoticonsClicked1();
        }
    }
    
    function people()
    {
        var tmp = 
        [
            "emoji_1f604_64.png",
            "emoji_1f603_64.png",
            "emoji_263a_64.png",
            "emoji_1f609_64.png",
            "emoji_1f60d_64.png",
            "emoji_1f618_64.png",
            "emoji_1f61a_64.png",
            "emoji_1f61c_64.png",
            "emoji_1f61d_64.png",
            "emoji_1f633_64.png",
            "emoji_1f601_64.png",
            "emoji_1f614_64.png",
            "emoji_1f60c_64.png",
            "emoji_1f612_64.png",
            "emoji_1f61e_64.png",
            "emoji_1f623_64.png",
            "emoji_1f622_64.png",
            "emoji_1f602_64.png",
            "emoji_1f62d_64.png",
            "emoji_1f62a_64.png",
            "emoji_1f625_64.png",
            "emoji_1f630_64.png",
            "emoji_1f613_64.png",
            "emoji_1f629_64.png",
            "emoji_1f62b_64.png",
            "emoji_1f628_64.png",
            "emoji_1f631_64.png",
            "emoji_1f620_64.png",
            "emoji_1f621_64.png",
            "emoji_1f624_64.png",
            "emoji_1f616_64.png",
            "emoji_1f606_64.png",
            "emoji_1f60b_64.png",
            "emoji_1f637_64.png",
            "emoji_1f635_64.png",
            "emoji_1f632_64.png",
            "emoji_1f47f_64.png",
            "emoji_1f60f_64.png",
            "emoji_1f472_64.png",
            "emoji_1f473_64.png",
            "emoji_1f46e_64.png",
            "emoji_1f477_64.png",
            "emoji_1f482_64.png",
            "emoji_1f476_64.png",
            "emoji_1f466_64.png",
            "emoji_1f467_64.png",
            "emoji_1f468_64.png",
            "emoji_1f469_64.png",
            "emoji_1f474_64.png",
            "emoji_1f475_64.png",
            "emoji_1f471_64.png",
            "emoji_1f47c_64.png",
            "emoji_1f478_64.png",
            "emoji_1f63a_64.png",
            "emoji_1f638_64.png",
            "emoji_1f63b_64.png",
            "emoji_1f63d_64.png",
            "emoji_1f63c_64.png",
            "emoji_1f640_64.png",
            "emoji_1f63f_64.png",
            "emoji_1f639_64.png",
            "emoji_1f480_64.png",
            "emoji_1f47d_64.png",
            "emoji_1f4a9_64.png",
            "emoji_1f525_64.png",
            "emoji_2728_64.png",
            "emoji_1f31f_64.png",
            "emoji_1f4a2_64.png",
            "emoji_1f4a6_64.png",
            "emoji_1f4a7_64.png",
            "emoji_1f4a4_64.png",
            "emoji_1f4a8_64.png",
            "emoji_1f442_64.png",
            "emoji_1f440_64.png",
            "emoji_1f443_64.png",
            "emoji_1f445_64.png",
            "emoji_1f444_64.png",
            "emoji_1f44d_64.png",
            "emoji_1f44e_64.png",
            "emoji_1f44c_64.png",
            "emoji_1f44a_64.png",
            "emoji_270a_64.png",
            "emoji_270c_64.png",
            "emoji_1f44b_64.png",
            "emoji_1f64b_64.png",
            "emoji_1f450_64.png",
            "emoji_1f446_64.png",
            "emoji_1f447_64.png",
            "emoji_1f449_64.png",
            "emoji_1f448_64.png",
            "emoji_1f64c_64.png",
            "emoji_261d_64.png",
            "emoji_1f64f_64.png",
            "emoji_1f44f_64.png",
            "emoji_1f4aa_64.png",
            "emoji_1f483_64.png",
            "emoji_1f46b_64.png",
            "emoji_1f48f_64.png",
            "emoji_1f491_64.png",
            "emoji_1f46f_64.png",
            "emoji_1f64b_64.png",
            "emoji_1f485_64.png",
            "emoji_1f64d_64.png",
            "emoji_1f3a9_64.png",
            "emoji_1f451_64.png",
            "emoji_1f452_64.png",
            "emoji_1f45f_64.png",
            "emoji_1f461_64.png",
            "emoji_1f460_64.png",
            "emoji_1f462_64.png",
            "emoji_1f455_64.png",
            "emoji_1f454_64.png",
            "emoji_1f457_64.png",
            "emoji_1f458_64.png",
            "emoji_1f459_64.png",
            "emoji_1f4bc_64.png",
            "emoji_1f45c_64.png",
            "emoji_1f380_64.png",
            "emoji_1f302_64.png",
            "emoji_1f484_64.png",
            "emoji_1f49b_64.png",
            "emoji_1f499_64.png",
            "emoji_1f49c_64.png",
            "emoji_1f49a_64.png",
            "emoji_2764_64.png",
            "emoji_1f494_64.png",
            "emoji_1f497_64.png",
            "emoji_1f493_64.png",
            "emoji_1f496_64.png",
            "emoji_1f49e_64.png",
            "emoji_1f498_64.png",
            "emoji_1f48c_64.png",
            "emoji_1f48b_64.png",
            "emoji_1f48d_64.png",
            "emoji_1f48e_64.png"
        ];
        return tmp;
    }
    
    function nature()
    {
        var tmp = 
        [
             "emoji_1f436_64.png",
             "emoji_1f43a_64.png",
             "emoji_1f431_64.png",
             "emoji_1f42d_64.png",
             "emoji_1f439_64.png",
             "emoji_1f430_64.png",
             "emoji_1f438_64.png",
             "emoji_1f42f_64.png",
             "emoji_1f428_64.png",
             "emoji_1f43b_64.png",
             "emoji_1f437_64.png",
             "emoji_1f42e_64.png",
             "emoji_1f417_64.png",
             "emoji_1f435_64.png",
             "emoji_1f412_64.png",
             "emoji_1f434_64.png",
             "emoji_1f411_64.png",
             "emoji_1f418_64.png",
             "emoji_1f427_64.png",
             "emoji_1f426_64.png",
             "emoji_1f425_64.png",
             "emoji_1f414_64.png",
             "emoji_1f40d_64.png",
             "emoji_1f41b_64.png",
             "emoji_1f419_64.png",
             "emoji_1f41a_64.png",
             "emoji_1f420_64.png",
             "emoji_1f41f_64.png",
             "emoji_1f42c_64.png",
             "emoji_1f433_64.png",
             "emoji_1f40e_64.png",
             "emoji_1f421_64.png",
             "emoji_1f42b_64.png",
             "emoji_1f429_64.png",
             "emoji_1f43e_64.png",
             "emoji_1f490_64.png",
             "emoji_1f338_64.png",
             "emoji_1f337_64.png",
             "emoji_1f340_64.png",
             "emoji_1f339_64.png",
             "emoji_1f33b_64.png",
             "emoji_1f33a_64.png",
             "emoji_1f341_64.png",
             "emoji_1f343_64.png",
             "emoji_1f342_64.png",
             "emoji_1f33e_64.png",
             "emoji_1f335_64.png",
             "emoji_1f334_64.png",
             "emoji_1f331_64.png",
             "emoji_1f319_64.png",
             "emoji_2b50_64.png",
             "emoji_2600_64.png",
             "emoji_2601_64.png",
             "emoji_26a1_64.png",
             "emoji_2614_64.png",
             "emoji_26c4_64.png",
             "emoji_1f300_64.png",
             "emoji_1f308_64.png",
             "emoji_1f30a_64.png"
        ];
        
        return tmp;
    }
    
    function objects()
    {
        var tmp = 
        [
             "emoji_1f38d_64.png",
             "emoji_1f49d_64.png",
             "emoji_1f38e_64.png",
             "emoji_1f392_64.png",
             "emoji_1f393_64.png",
             "emoji_1f38f_64.png",
             "emoji_1f390_64.png",
             "emoji_1f383_64.png",
             "emoji_1f47b_64.png",
             "emoji_1f385_64.png",
             "emoji_1f384_64.png",
             "emoji_1f381_64.png",
             "emoji_1f389_64.png",
             "emoji_1f388_64.png",
             "emoji_1f38c_64.png",
             "emoji_1f3a5_64.png",
             "emoji_1f4f7_64.png",
             "emoji_1f4fc_64.png",
             "emoji_1f4bf_64.png",
             "emoji_1f4c0_64.png",
             "emoji_1f4bd_64.png",
             "emoji_1f4be_64.png",
             "emoji_1f4bb_64.png",
             "emoji_1f4f1_64.png",
             "emoji_260e_64.png",
             "emoji_1f4de_64.png",
             "emoji_1f4e0_64.png",
             "emoji_1f4e1_64.png",
             "emoji_1f4fa_64.png",
             "emoji_1f4fb_64.png",
             "emoji_1f508_64.png",
             "emoji_1f514_64.png",
             "emoji_1f4e2_64.png",
             "emoji_1f4e3_64.png",
             "emoji_1f513_64.png",
             "emoji_1f512_64.png",
             "emoji_1f50f_64.png",
             "emoji_1f510_64.png",
             "emoji_1f511_64.png",
             "emoji_1f50e_64.png",
             "emoji_1f4a1_64.png",
             "emoji_1f50d_64.png",
             "emoji_1f6c0_64.png",
             "emoji_1f6bd_64.png",
             "emoji_1f528_64.png",
             "emoji_1f6ac_64.png",
             "emoji_1f4a3_64.png",
             "emoji_1f52b_64.png",
             "emoji_1f48a_64.png",
             "emoji_1f489_64.png",
             "emoji_1f4b0_64.png",
             "emoji_1f4b4_64.png",
             "emoji_1f4b5_64.png",
             "emoji_1f4f2_64.png",
             "emoji_2709_64.png",
             "emoji_1f4e9_64.png",
             "emoji_1f4e8_64.png",
             "emoji_1f4eb_64.png",
             "emoji_1f4ea_64.png",
             "emoji_1f4ec_64.png",
             "emoji_1f4ed_64.png",
             "emoji_1f4ee_64.png",
             "emoji_1f4dd_64.png",
             "emoji_2702_64.png",
             "emoji_1f4d6_64.png",
             "emoji_1f3a8_64.png",
             "emoji_1f3ac_64.png",
             "emoji_1f3a4_64.png",
             "emoji_1f3a7_64.png",
             "emoji_1f3bc_64.png",
             "emoji_1f3b5_64.png",
             "emoji_1f3b6_64.png",
             "emoji_1f3ba_64.png",
             "emoji_1f3b7_64.png",
             "emoji_1f3b8_64.png",
             "emoji_1f47e_64.png",
             "emoji_1f004_64.png",
             "emoji_1f3af_64.png",
             "emoji_1f3c8_64.png",
             "emoji_1f3c0_64.png",
             "emoji_26bd_64.png",
             "emoji_26be_64.png",
             "emoji_1f3be_64.png",
             "emoji_1f3b1_64.png",
             "emoji_26f3_64.png",
             "emoji_1f3c1_64.png",
             "emoji_1f3c6_64.png",
             "emoji_1f3bf_64.png",
             "emoji_2615_64.png",
             "emoji_1f375_64.png",
             "emoji_1f376_64.png",
             "emoji_1f37a_64.png",
             "emoji_1f37b_64.png",
             "emoji_1f378_64.png",
             "emoji_1f374_64.png",
             "emoji_1f354_64.png",
             "emoji_1f35f_64.png",
             "emoji_1f35d_64.png",
             "emoji_1f35b_64.png",
             "emoji_1f371_64.png",
             "emoji_1f363_64.png",
             "emoji_1f359_64.png",
             "emoji_1f358_64.png",
             "emoji_1f35a_64.png",
             "emoji_1f35c_64.png",
             "emoji_1f372_64.png",
             "emoji_1f362_64.png",
             "emoji_1f361_64.png",
             "emoji_1f373_64.png",
             "emoji_1f35e_64.png",
             "emoji_1f366_64.png",
             "emoji_1f367_64.png",
             "emoji_1f370_64.png",
             "emoji_1f34e_64.png",
             "emoji_1f34a_64.png",
             "emoji_1f349_64.png",
             "emoji_1f353_64.png",
             "emoji_1f346_64.png",
             "emoji_1f345_64.png"
        ];
        
        return tmp;
    }
    
    function places()
    {
        var tmp = 
        [
        "emoji_1f3e0_64.png",
        "emoji_1f3e1_64.png",
        "emoji_1f3eb_64.png",
        "emoji_1f3e2_64.png",
         "emoji_1f3e3_64.png",
         "emoji_1f3e5_64.png",
         "emoji_1f3e6_64.png",
         "emoji_1f3ea_64.png",
         "emoji_1f3e9_64.png",
         "emoji_1f3e8_64.png",
         "emoji_1f492_64.png",
         "emoji_26ea_64.png",
         "emoji_1f3ec_64.png",
         "emoji_1f307_64.png",
         "emoji_1f306_64.png",
         "emoji_1f3ef_64.png",
         "emoji_1f3f0_64.png",
         "emoji_26fa_64.png",
         "emoji_1f3ed_64.png",
         "emoji_1f5fc_64.png",
         "emoji_1f5fb_64.png",
         "emoji_1f304_64.png",
         "emoji_1f305_64.png",
         "emoji_1f303_64.png",
         "emoji_1f5fd_64.png",
         "emoji_1f3a1_64.png",
         "emoji_26f2_64.png",
         "emoji_1f3a2_64.png",
         "emoji_1f6a2_64.png",
         "emoji_26f5_64.png",
         "emoji_1f6a4_64.png",
         "emoji_1f680_64.png",
         "emoji_2708_64.png",
         "emoji_1f4ba_64.png",
         "emoji_1f689_64.png",
         "emoji_1f684_64.png",
         "emoji_1f685_64.png",
         "emoji_1f683_64.png",
         "emoji_1f68c_64.png",
         "emoji_1f699_64.png",
         "emoji_1f697_64.png",
         "emoji_1f695_64.png",
         "emoji_1f69a_64.png",
         "emoji_1f693_64.png",
         "emoji_1f692_64.png",
         "emoji_1f691_64.png",
         "emoji_1f6b2_64.png",
         "emoji_1f488_64.png",
         "emoji_1f68f_64.png",
         "emoji_1f3ab_64.png",
         "emoji_1f6a5_64.png",
         "emoji_26a0_64.png",
         "emoji_1f6a7_64.png",
         "emoji_1f530_64.png",
         "emoji_26fd_64.png",
         "emoji_2668_64.png",
         "emoji_1f3ad_64.png",
         "emoji_1f1ef_1f1f5_64.png",
         "emoji_1f1f0_1f1f7_64.png",
         "emoji_1f1e9_1f1ea_64.png",
         "emoji_1f1e8_1f1f3_64.png",
         "emoji_1f1fa_1f1f8_64.png",
         "emoji_1f1eb_1f1f7_64.png",
         "emoji_1f1ea_1f1f8_64.png",
         "emoji_1f1ee_1f1f9_64.png",
         "emoji_1f1f7_1f1fa_64.png",
         "emoji_1f1ec_1f1e7_64.png"
        ];
        
        return tmp;
    }
    
    function symbols()
    {
        var tmp = 
        [
        "emoji_31_20e3_64.png",
        "emoji_32_20e3_64.png",
        "emoji_33_20e3_64.png",
        "emoji_34_20e3_64.png",
         "emoji_35_20e3_64.png",
         "emoji_36_20e3_64.png",
         "emoji_37_20e3_64.png",
         "emoji_38_20e3_64.png",
         "emoji_39_20e3_64.png",
         "emoji_30_20e3_64.png",
         "emoji_23_20e3_64.png",
         "emoji_2b06_64.png",
         "emoji_2b07_64.png",
         "emoji_2b05_64.png",
         "emoji_27a1_64.png",
         "emoji_2197_64.png",
         "emoji_2196_64.png",
         "emoji_2198_64.png",
         "emoji_2199_64.png",
         "emoji_2935_64.png",
         "emoji_2934_64.png",
         "emoji_1f199_64.png",
         "emoji_1f192_64.png",
         "emoji_1f4f6_64.png",
         "emoji_1f3a6_64.png",
         "emoji_1f201_64.png",
         "emoji_1f22f_64.png",
         "emoji_1f233_64.png",
         "emoji_1f235_64.png",
         "emoji_1f250_64.png",
         "emoji_1f239_64.png",
         "emoji_1f23a_64.png",
         "emoji_1f236_64.png",
         "emoji_1f21a_64.png",
         "emoji_1f6bb_64.png",
         "emoji_1f6b9_64.png",
         "emoji_1f6ba_64.png",
         "emoji_1f6bc_64.png",
         "emoji_1f6be_64.png",
         "emoji_267f_64.png",
         "emoji_1f6ad_64.png",
         "emoji_1f237_64.png",
         "emoji_1f238_64.png",
         "emoji_1f202_64.png",
         "emoji_3299_64.png",
         "emoji_3297_64.png",
         "emoji_1f51e_64.png",
         "emoji_26d4_64.png",
         "emoji_2733_64.png",
         "emoji_274e_64.png",
         "emoji_2734_64.png",
         "emoji_1f49f_64.png",
         "emoji_1f19a_64.png",
         "emoji_1f4f3_64.png",
         "emoji_1f4f4_64.png",
         "emoji_1f4a0_64.png",
         "emoji_27bf_64.png",
         "emoji_1f3e7_64.png",
         "emoji_1f4b2_64.png",
         "emoji_303d_64.png",
         "emoji_274c_64.png",
         "emoji_2b55_64.png",
         "emoji_2757_64.png",
         "emoji_2753_64.png",
         "emoji_2755_64.png",
         "emoji_2754_64.png",
         "emoji_2716_64.png",
         "emoji_2660_64.png",
         "emoji_2665_64.png",
         "emoji_2663_64.png",
         "emoji_2666_64.png",
         "emoji_1f531_64.png",
         "emoji_1f532_64.png",
         "emoji_1f533_64.png",
         "emoji_25fc_64.png",
         "emoji_25fb_64.png",
         "emoji_25fe_64.png",
         "emoji_25fd_64.png",
         "emoji_25aa_64.png",
         "emoji_25ab_64.png",
         "emoji_2b1c_64.png",
         "emoji_2b1b_64.png",
         "emoji_26ab_64.png",
         "emoji_26aa_64.png",
         "emoji_1f534_64.png",
         "emoji_1f535_64.png",
         "emoji_1f536_64.png",
         "emoji_1f537_64.png",
         "emoji_1f538_64.png",
         "emoji_1f539_64.png"
        ];
        
        return tmp;
    }
}