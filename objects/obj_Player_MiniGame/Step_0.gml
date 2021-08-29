/// @description jumping

var jkey = keyboard_check(vk_space);
var mclick = mouse_check_button_pressed(mb_left);



// double jumping
// if ((jkey || mclick) && click_flag) {
  // click_flag = false;
  // vspd = -10;  
// }

// check for ground
if (place_meeting(x, y+1, obj_Floor_MiniGame)) {
  vspd = 0;
  
  // jumping
  if(jkey || mclick) {
    // click_flag = true;
    vspd = -jspd;
    alarm[1] = room_speed * 1;
  }
} else {
  //gravity
  if (vspd < 10) {
    vspd += grav;
  }
}

// vertical collisions
if (place_meeting(x, y+vspd, obj_Floor_MiniGame)) {
  while(!place_meeting(x, y+sign(vspd), obj_Floor_MiniGame)) {
    y += sign(vspd);
  }
  vspd = 0;
}

// move vertically
y += vspd;

