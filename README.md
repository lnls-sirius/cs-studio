# cs-studio
CS-Studio based on the ESS implementation in version 4.6.1.8.

System Requirements: openJDK 8 and openjfx

To install cs-studio just run the cs-studio-installation.sh file as super user. 
It will download the latest release of the ESS implementation and configure the paths to the LNLS control system server.
After running the above command, run cs-studio to load all the pending files.
After execution, close cs-studio and run the images-installation.sh file to update the software images.
The images-installation.sh program should not be run before opening and closing cs-studio, as it needs some files that will only be loaded the first time the program is run.

aureo.carneiro@lnls.br
