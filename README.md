# Prácticas de Prolog y Haskell

Repositorio de ejercicios introductorios para practicar programación lógica con Prolog y programación funcional con Haskell. Los ejemplos son independientes y están organizados en archivos por tema.

## Stack y tecnologías

- **Prolog:** hechos, reglas, consultas, unificación, recursividad, listas, operadores lógicos y corte (`!`). Los ejercicios pueden ejecutarse con SWI-Prolog o un entorno compatible.
- **Haskell:** funciones, tipos, condicionales, patrones, guardas, recursividad, listas y comprensión de listas. Se puede usar GHCi, el intérprete interactivo de GHC.
- **Git:** control de versiones del material.

No se requieren dependencias adicionales ni un proceso de compilación común para todo el repositorio.

## Funcionalidades y temas desarrollados

### Prolog

- **Aritmética recursiva:** producto por sumas, potencia por multiplicaciones, cociente por restas, suma de la serie de Gauss, MCD, factorial y Fibonacci.
- **Listas:** acceso a cabeza y cola, y extracción de elementos.
- **Relaciones familiares:** padres, hijos, hermanos, abuelos y otros vínculos de parentesco.
- **Grafos y geografía:** nodos conectados, bucles, caminos, costos de rutas, países limítrofes y relaciones entre países.
- **Consultas y combinaciones de datos:** proyección, selección por condiciones, productos cartesianos, unión, intersección y diferencia de conjuntos.
- **Dominios de ejemplo:** recomendaciones de pareja según preferencias, planificación de viajes y menús, y análisis de calificaciones, ventas y comisiones.

### Haskell

- Funciones aritméticas y condicionales, incluidas divisibilidad y comparación.
- Operaciones y comprensión de listas, filtros, rangos, listas infinitas y procesamiento de cadenas.
- Tuplas, tipos estáticos y conversión entre valores y cadenas.
- Recursividad y patrones para factorial, MCD, potencias y otras funciones.
- Cálculo de raíces, detección de palíndromos y generación de ternas pitagóricas.

## Cómo ejecutar los ejercicios

Cada archivo Prolog se puede cargar por separado desde la terminal:

```bash
swipl -s "listas.pl"
```

Una vez abierto el intérprete, se pueden realizar consultas, por ejemplo:

```prolog
?- dameCabeza([1, 2, 3], Cabeza).
```

Para cargar el material de Haskell en GHCi:

```bash
ghci haskell.hs
```

Después de cargarlo, se pueden evaluar funciones definidas en el archivo, por ejemplo `sumaDiez 14`. Los nombres de algunos archivos contienen espacios; deben escribirse entre comillas al pasarlos como argumentos de terminal.
