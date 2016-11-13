window_init();

areaWidth = windowWidth - 64;
areaHeight = 480;
areaY = 24;

buttonPadding = 8;
buttonHeight = sprite_get_height(spr_button);
buttonsWidth = 0;
padding = 8;

surf = -1;
buttonSurf = -1;

dialogbox_set_text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id faucibus ligula. Integer varius est ut nisi tincidunt posuere varius enim tempor. In in dui metus. Donec nec tellus nulla, a vestibulum mauris. Sed at tincidunt erat. Etiam ipsum sapien, bibendum eget viverra at, fermentum id arcu. Mauris non purus dapibus purus volutpat facilisis. Mauris quis mauris vel mauris gravida placerat. Morbi porta vulputate est venenatis euismod. Nam cursus, elit accumsan congue tempor, elit nisl imperdiet felis, nec bibendum elit nunc eget orci. Vivamus posuere, leo et consectetur pellentesque, metus velit sodales sem, nec tristique neque leo auctor nisl. Nam consectetur, neque non iaculis iaculis, nisl nunc blandit magna, quis condimentum enim ante non ante. Quisque imperdiet lacus ac mauris lobortis elementum. Sed non urna ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac arcu non justo auctor imperdiet. Curabitur iaculis dictum libero, in lobortis magna vehicula ut. Fusce nec arcu a turpis porta feugiat."
+"#"
+"#Nam vitae tortor eget ipsum elementum posuere a at purus. Fusce sed sapien vel quam tincidunt varius in eu dolor. Aliquam tristique nulla sed metus pellentesque ornare. Phasellus volutpat fringilla lorem vitae faucibus. Integer facilisis, urna eget aliquet commodo, arcu diam semper odio, sed sollicitudin risus ipsum non neque. Nulla sapien risus, bibendum eget hendrerit in, condimentum id quam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris non sagittis nibh. Nullam non turpis mauris. Vivamus egestas orci eget ante placerat ac semper lectus luctus."
+"#"
+"#Curabitur nec mauris mattis risus feugiat placerat. Aliquam erat volutpat. Nam dolor turpis, imperdiet id vehicula et, interdum eu nisi. Aenean ipsum enim, consequat quis mattis quis, tempor vitae nibh. Nullam dignissim libero id quam ultricies fermentum. Donec sed risus leo. Morbi molestie accumsan leo, at sodales erat venenatis non. Praesent diam leo, ornare in malesuada et, viverra ut velit. Donec ornare purus eu dui fermentum non porttitor diam condimentum. Aenean imperdiet cursus semper. Sed sit amet dui ut arcu molestie cursus. Nullam purus orci, cursus non sollicitudin sed, dapibus eu diam. Suspendisse potenti. Aliquam molestie, lectus a porttitor pellentesque, nisl dui lacinia enim, sed tempus mauris mauris non elit. Morbi ut malesuada mi."
+"#"
+"#Fusce lacus purus, cursus id porta vitae, tristique in purus. Aliquam eu nisi ut ligula commodo fringilla vitae vel neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent felis ante, tincidunt vitae rutrum pulvinar, dictum sed mi. Nam elementum commodo dignissim. Donec tempor consequat metus, vitae dapibus velit hendrerit molestie. Nunc fringilla, ipsum non adipiscing blandit, sapien leo euismod erat, vel gravida est odio non mauris. Fusce porttitor nunc eget ligula pellentesque aliquet. Cras et arcu et purus congue tempor. In hac habitasse platea dictumst. Pellentesque vestibulum massa vel lectus eleifend vel sodales lectus convallis. Nunc porttitor metus a mi cursus vitae pellentesque purus laoreet. Maecenas ac sem mauris, sed semper dui."
+"#"
+"#Etiam auctor nisl vitae felis fringilla placerat. Pellentesque commodo magna est. Donec mollis eleifend quam a luctus. Nam arcu justo, adipiscing in viverra vitae, molestie non dolor. Nam pellentesque neque id quam egestas eget congue dolor iaculis. Quisque gravida laoreet luctus. Suspendisse potenti. Morbi consequat ultricies arcu, a posuere nisi condimentum at. Fusce lacus sem, rhoncus eu consequat vitae, facilisis in tellus. Nam pulvinar velit a tortor tempus accumsan. Ut euismod tempus tempus. Integer placerat ante vel ante pharetra nec feugiat nunc fermentum. Proin eu mi ut dolor cursus elementum eget vitae neque. Ut pellentesque ultricies turpis ut consequat. Nullam euismod condimentum vehicula. Vivamus porta enim sit amet lacus eleifend luctus. "
);

buttons = ds_list_create();
