# CrowdManipulationInterface
Manipulation Interface for Crowd Control of CARL

#Notes from Peter
### Known Bugs
 - All users in the queue show the same wait time. Still not sure why this is. The time should be based on wait_time. Possibly an issue within rosqueue.js
 - user keyboard teleop is active during auto nav, and I think the controls ADD together, so if you press forward while carl's auto-driving forward it goes SUPER fast
 - Along the same lines, there's no way to CANCEL a nav goal, which is super annoying.
 - No feedback from segmentation
 - Trial timer counts down during the tutorial
 - The tutorial can't be reshown to the user, and only shows once 
 - Currently uses multi-mjpeg stream, and the other listed streams that don't exist

##Helpful Debugging Info
 - If it says you're active, but you can't do anything, it's probably because the tutorial is happening but not showing (would be a css issue)
 - If you don't see the camera feed, carl's camera probably failed. restart carl.
 - If you don't see the parking markers, you're not running the right interface. You should run crowd_manipulation.launch
