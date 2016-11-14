window_init();
url = "http://faboo.com";

urlbarHeight = 24;
urlbarPad = 4;

height = 480;

backbuttonHeight = 32;

scrollpane_init(windowWidth - 24, height-urlbarHeight+urlbarPad*2-20-backbuttonHeight, 680);

state = 0;
back = -1;

isInteractable = true;

internet_switch_page(0);

// TODO: plz replace these.
mainArticleHeadline = "Insert Headline Here";
mainArticleCopy = "Bacon ipsum dolor amet brisket venison jerky landjaeger hamburger ribeye cupim burgdoggen, shoulder pancetta andouille flank pig jowl. Strip steak turkey capicola ground round chuck swine. Pork chop biltong drumstick, pig bacon ground round filet mignon meatball chuck jerky prosciutto cupim." +
    "##" + 
    "Bacon ipsum dolor amet brisket venison jerky landjaeger hamburger ribeye cupim burgdoggen, shoulder pancetta andouille flank pig jowl. Strip steak turkey capicola ground round chuck swine. Pork chop biltong drumstick, pig bacon ground round filet mignon meatball chuck jerky prosciutto cupim." +  "##" + 
    "Bacon ipsum dolor amet brisket venison jerky landjaeger hamburger ribeye cupim burgdoggen, shoulder pancetta andouille flank pig jowl. Strip steak turkey capicola ground round chuck swine. Pork chop biltong drumstick, pig bacon ground round filet mignon meatball chuck jerky prosciutto cupim.";
   
    
