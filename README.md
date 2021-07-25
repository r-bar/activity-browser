# KDE Activity Browser

Launch a browser dependant on the current KDE activity in use.


## Installing
Clone the repository, change directory to the project root and run `make
install`. The program will be installed in the user's home directory by default.
To specify an alternate install location set the `INSTALL_PATH` environment
variable.


## Usage

Before this script will be useful you will first need to setup the KDE
activities you want to use and create the corresponding browser profiles.


### Creating Profiles

**Firefox**
Navigate to [about:profiles](about:profiles) and click the "Create a new
profile" button to create a new profile. After you are done creating profiles
make sure the global default session is set using the "Set as default profile"
below the corresponding profile entry.


### Setting the default browser to use
```
activity-browser set-default-program firefox
```

### Setting the profile for the current activity
To set the profile to use for the activity switch to the activity you want to
change then open a terminal and run the following command.

```
activity-browser set-profile firefox work
```

This will set the Firefox browser to open the `work` profile for this activity
for now on. You can change the default profile at any time by rerunning the
command and specifying a different profile to use.


### Checking the settings
In a terminal run `activity-browser show-config` to check the current program
settings. The default storage location for the config file is
`$HOME/.config/activity-browser/config.json`


### Launching the browser
Activity browser will use the default browser to launch the profile specified
for the activity by default. Otherwise it will launch the default browser
