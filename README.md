## Ordenamiento de listas

### Algoritmos implementados

Están implementados los algoritmos _Quick Sort, Merge Sort, Bubble Sort, Selection Sort_ y _Insertion Sort_

### Complejidad algorítmica

La complejidad algorítmica, notada como **O (Big O)**, describe las complejidad de resolver un problema según aumenta el tamaño del problema.

Los algoritmos _Quick Sort_ y _Merge Sort_ tienen complejidad **O(n log(n))**
Los algoritmos _Insertion Sort_, _Selection Sort_ y _Bubble Sort_ tienen complejidad **O(n^2)**

Al aumentar el tamaño del problema, los algoritmos con complejidad **O(n log(n))** crecen en complejidad de forma más lenta que los que tienen complejidad **O(n^2)**. Por lo tanto, los primeros algoritmos son más eficientes que los segundos.

### Por qué Haskell

#### Data y Data Classes, Extensibilidad

Haskell permite trabajar con tipos genéricos. Podemos asegurarnos que estos tipos genéricos cumplan con ciertas condiciones, como por ejemplo Ord, que nos permite ordenar elementos de un mismo tipo, y Eq para poder comparar e igualar datos de un mismo tipo.

Esto nos permite hacer nuestro código extensible. El código implementado funciona tanto para Integers, como para Floats, Chars, etc.
Por ejemplo, podríamos crear un TAD propio, por ejemplo una baraja de cartas.
Podríamos establecer un orden según Ranks y Suits, creando una instancia de Ord para Card. Al hacer esto, ya podríamos tomar una lsita de cartas y ordenarlas con los algoritmos ya implementados.


#### Enfoque funcional, recursividad

El enfoque funcional es ideal para los algoritmos _Quick Sort_ y _Merge Sort_, que son de naturaleza recursiva. Estos algoritmos se vuelven muy claros al implementarlos de forma funcional.

Por otro lado, al no trabajar con variables globales, ni tener una interacción con el usuario, se garantiza la inexistencia de efectos secundarios. Esto significa que para una función se puede asegurar el mismo resultado para los mismo parámetros. Esto se da gracias al encapsulamiento de las funciones. No tienen ninguna interacción con el entorno, salvo su parámetro de entrada (para funciones puras) y su valor devuelto.

Al no utilizar variables (el let no ocupa espacio en memoria, simplemente hace el codigo más legible), el programa no ocupa espacio innecesario en memoria.

#### Desventajas

El enfoque funcional es poco natural para los algorítmos _Insertion Sort_, _Selection Sort_ y _Bubble Sort_. Estos algoritmos son más claros en un enfoque imperativo.

Por otro lado, muchos casos, la recursión ocupa un nuevo nivel en el Stack, por lo que consume muchos recursos de procesador, a cambio de no ocupar espacio en memoria.
