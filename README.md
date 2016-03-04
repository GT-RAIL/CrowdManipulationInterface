CrowdManipulationInterface [![Build Status](https://api.travis-ci.org/GT-RAIL/CrowdManipulationInterface.png)](https://travis-ci.org/GT-RAIL/CrowdManipulationInterface)
==========================

#### Manipulation Interface for Crowd Control of CARL

This repository contains an interface for the [Robot Management System (RMS)](http://wiki.ros.org/rms).

This project is released as part of the [Robot Web Tools](http://robotwebtools.org/) effort.

### Setup
To setup the interface on a server running the RMS, run the automated script in the [install](install) directory:

```bash
./install.bash
```

This script will copy the scripts to your local RMS directory. Afterwards, you will be able to add the interface through the admin panel.

### Build
Checkout [CONTRIBUTING.md](CONTRIBUTING.md) for details on building if you are contributing code.

### License
CrowdManipulationInterface is released with a BSD license. For full terms and conditions, see the [LICENSE](LICENSE) file.

### Authors
See the [AUTHORS.md](AUTHORS.md) file for a full list of contributors.

### Known Bugs
 - All users in the queue show the same wait time. Still not sure why this is. The time should be based on wait_time. Possibly an issue within rosqueue.js
 - User keyboard teleop is active during auto nav, and I think the controls ADD together, so if you press forward while CARL's auto-driving forward it goes SUPER fast
 - Along the same lines, there's no way to CANCEL a nav goal, which is super annoying.
 - No feedback from segmentation
 - Trial timer counts down during the tutorial
 - The tutorial can't be re-shown to the user, and only shows once 
 - Currently uses multi-mjpeg stream, and the other listed streams that don't exist
 - If it says you're active, but you can't do anything, it's probably because the tutorial is happening but not showing (would be a css issue)
 
