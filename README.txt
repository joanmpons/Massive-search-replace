The intended purpose of this script is to anonimize or change the codes and descriptions of Board entities and cubes in a coherent way across a whole database. The summarized flow of the process is the following: the entities and cubes are extracted from Board, then tranformed with an R script according to predifined dictionaries and finally uploaded back into Board. Notice that you don't need to change the whole codes or descriptions, you can simply choose to anonimize specific words across all cubes and entities (e.g. Transform "Holistic" into "Company 1").

-Install R on your computer.

-Open the R console and type "install.packages("tidyverse")"to install the required packages.

-Edit the .bat file in this folder to ensure that the PATH points to the Program Files of the specific R version you have installed. Then, make sure you change directory ("cd") to your R working directory (WD).

-If you don't know your R version type "R.version.string" on the R console. If you don't know your WD type "getwd()" on your R console, by default it should be your Documents folder.

-Place the .bat file and the .R file in your WD.

-Execute the .bat file once and the "Dictionaries", "Data to Anon" and "Results" folders will be created in your WD.

-Create a .txt file and write the old terms on the left and the new ones on the right separated by ";". For instance: "Holistic;Company 1". Keep in mind that spaces matter and make sure to not include headers.

*Notice that you can also use this script for translations if you place the original codes/descriptions on the left and the translation on the right.*

-Extract all trees and entities from Board. Copy them from "C:\Board\Dataset\YourDB\All\Trees" and into the "Data to Anon" folder. 

-Execute the .bat file.

-Copy the files from the "Results" folder back into "C:\Board\Dataset\YourDB\All\Trees".

-Clean the "Results" and the "Data to Anon" folders.

-Extract all cubes from Board. Copy them from "C:\Board\Dataset\YourDB\All\Cubes" and into the "Data to Anon" folder.

-Execute the .bat file.

-Copy the files from the "Results" folder back into "C:\Board\Dataset\YourDB\All\Cubes".

-Clean the "Results" and the "Data to Anon" folders.

-Reload all trees and cubes in Board.

