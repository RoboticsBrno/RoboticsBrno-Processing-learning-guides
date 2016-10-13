# Learning guide pro programovací platformu Processing

## 1. lekce - seznámení se s Processingem

### 1.1 Co je Processing

Processing je programovací jazyk nebo také vývojové prostředí pro jednoduchou a zajímavou tvorbu grafiky a zároveň nástroj pro výuku programování. Byl vyvinut jako univerzitní projekt na [MIT](https://en.wikipedia.org/wiki/Massachusetts_Institute_of_Technology). Tento jazyk vychází z [Javy](https://en.wikipedia.org/wiki/Java_(programming_language)) a je velmi podobný [C](https://en.wikipedia.org/wiki/C_(programming_language))/[C++](https://en.wikipedia.org/wiki/C%2B%2B), případně [Wiringu](https://en.wikipedia.org/wiki/Wiring_(development_platform)), který se využívá pro programování [Arduin](https://en.wikipedia.org/wiki/Arduino) a má také univerzitní kořeny. 

### 1.2 Co potřebuji

Pro programování v Processingu je třeba si stáhnout vývojové prostředí z oficiálních stránek: www.processing.org

Vývojové prostředí je multiplatformní (funguje pod různými operačními systémy): Windows, Mac OS X, Linux

### 1.3 Začínáme programovat

Základní program se skládá z funkcí `setup()` a `draw()`. 

```processing
void setup()
{
  // kód uvnitř této funkce se provede vždy jednou po spuštění programu
}

void draw()
{
  // kód uvnitř této funkce se provádí periodicky (pořád se opakuje)
}
```

### 1.4 Vykresleme obdélník 

```processing
void setup()
{
  size(600, 400); // velikost okna, do kterého budeme kreslit: size(šířka, výška)

  // rect() - příkaz pro vykreslení obdélníku
  // rect(pozice_x, pozice_y, šířka, výška);
  rect(100, 50, 400, 300);
}
```

