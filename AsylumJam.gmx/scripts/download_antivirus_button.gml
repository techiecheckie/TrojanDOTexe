
if (!instance_exists(obj_antivirus_open))
    instance_create(obj_antivirus_slot.x, obj_antivirus_slot.y, obj_antivirus_open);
    
cancel_internet_dialog();
