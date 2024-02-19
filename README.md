# Massive Search & Replace
El objetivo de este script es poder reemplazar información de forma masiva, automatizada y en múltiples ficheros a la vez. Este proceso puede servir para reemplazar datos, anonimizar-los o aplicar traducciones. tambien se puede ejecutar con un bat

-Edit the .bat file to ensure that the PATH points to the Program Files of the specific R version you have installed. Then, make sure you change directory ("cd") to your R working directory (WD).

-If you don't know your R version type "R.version.string" on the R console. If you don't know your WD type "getwd()" on your R console, by default it should be your Documents folder.

-Place the .bat file and the .R file in your WD.

-Execute the .bat file once and the "Dictionaries", "Data to Anon" and "Results" folders will be created in your WD.

-Create a .txt file and write the old terms on the left and the new ones on the right separated by ";". For instance: "AOI;Company 1". Keep in mind that spaces matter and make sure to not include headers.

-Extract all trees and entities from Board. Copy them from "C:\Board\Dataset\YourDB\All\Trees" and into the "Data to Anon" folder. 

-Execute the .bat file.
