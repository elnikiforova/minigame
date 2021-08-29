/// @description speed
if (!global.isHit)
{
	speed = -3 * global.speedModifier;
} 


// removing obj from memory
if (x < -100)
{
	instance_destroy();
}
