**README**

La mayoria de las funciones auxiliares. El evaluar todo hace uso de ellas. 
Evaluar_todo.m ha sido modificado ligeramente para leer las senales de forma mas conveniente para nosotros.
ejemplo: "load('s4.mat');" en ved de "x4 = load('s4.mat');".

Por cuestion de eficiencia, hacemos uso de las funciones lempel ziv de las practicas. Las nuestras han sido
incluidas en la carpeta mi lempel ziv. 

Las soluciones alternativas consisten de logpcm y adpcm. Para ejecutarlas, simplemente hace falta lanzar el script
con el nombre en todo mayusculas. Devuelven el snrq obtenido. ADPCM supone que el receptor ya tiene toda la informacion
lateral pues el script lo estabamos usando para probar cuantificaciones de 1 bit, sin exito.

Por ultima: signalspecs.m es un analizador de señales (programado por nosotros) del cual hemos hecho uso para encontrar soluciones.