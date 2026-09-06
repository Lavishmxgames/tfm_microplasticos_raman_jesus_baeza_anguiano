# TFM — Análisis a gran escala de la robustez de métricas de similitud espectral frente a la degradación de calidad para la identificación de microplásticos

**Autor:** Jesús Baeza Anguiano
**Director:** Nico Coca López
**Titulación:** Máster Universitario en Análisis de Datos Masivos (Big Data)
**Curso:** 2025–2026
**Entrega:** Intermedia (septiembre 2026)

---

## Cómo compilar en Overleaf (2 minutos)

1. Entra en https://overleaf.com y pulsa **New Project → Upload Project**.
2. Arrastra este repositorio (o un zip con su contenido).
3. Una vez subido, en la parte superior de Overleaf:
   - **Compiler:** `pdfLaTeX`
   - **Main document:** `main.tex`
   - **TeX Live version:** 2023 o superior (la que venga por defecto vale).
4. Pulsa **Recompile**. Overleaf ejecutará automáticamente `pdflatex → biber → pdflatex → pdflatex`, lo que genera el índice, las referencias cruzadas y la bibliografía en formato APA 7.

Si en la primera compilación aparecen citas con `[?]`, pulsa **Recompile from scratch** (menú del botón Recompile) y se resolverán.

## Estructura del proyecto

```
main.tex                  ← documento principal, no tocar salvo para añadir/quitar capítulos
tfm.cls                   ← clase con toda la configuración de estilo (márgenes, fuentes, colores)
datos.tex                 ← datos del TFM (título, autor, director, fecha)
portada.tex               ← página de portada
contraportada.tex         ← página de contraportada
abstract.tex              ← resumen y abstract en ES/EN
bibliography.bib          ← referencias APA
imagenes/
  └── logo_ue.png         ← logo de la Universidad Europea
capitulos/
  ├── Resumen.tex         ← Cap. 1 — Resumen del proyecto (1 página)
  ├── EstadoArte.tex      ← Cap. 2 — Antecedentes y estado del arte
  ├── Objetivos.tex       ← Cap. 3 — Objetivos (OE1–OE5)
  ├── Desarrollo.tex      ← Cap. 4 — Planificación, pipeline, presupuesto, resultados
  ├── Discusion.tex       ← Cap. 5 — Discusión preliminar
  ├── Conclusiones.tex    ← Cap. 6 — Conclusiones parciales
  ├── TrabajoFuturo.tex   ← Cap. 7 — Futuras líneas
  ├── Referencias.tex     ← Cap. 8 — Bibliografía (se genera con \printbibliography)
  └── Anexos.tex          ← Cap. 9 — Anexos (estructura del repo de código, reproducibilidad)
```

Este repositorio contiene únicamente la memoria (LaTeX). El código del experimento (paquete `microraman`, pipeline, tests, CI) vive en un repositorio independiente: `master_bigdata`.

## Sobre el proyecto

El TFM evalúa a gran escala la robustez de siete métricas de similitud espectral (coseno, Pearson, Spearman, SAM, HQI, euclídea y Manhattan) frente a la degradación de la calidad de espectros Raman de microplásticos, e implementa para ello un *pipeline* reproducible y paralelizable con Apache Spark. El diseño actual es fruto de un pivote (documentado como ADR-004 en las notas técnicas del proyecto) respecto al anteproyecto original, que planteaba una arquitectura de ingesta con Apache Kafka y clasificación mediante los modelos preentrenados de Open Specy.

## Qué cubre esta entrega intermedia (según la rúbrica)

| Criterio (rúbrica) | Peso | Dónde está en la memoria |
|---|---|---|
| Progreso vs plan de trabajo | 30 % | Cap. 4.1 (Gantt), Cap. 4.9 (resultados parciales por OE) |
| Concreción técnica | 20 % | Cap. 4.2 (pipeline, métricas, matching, arquitectura Spark), Anexos |
| Desarrollo técnico | 30 % | Cap. 4.2–4.9 (pipeline validado, tests, CI, decisiones) |
| Coherencia técnica y decisiones | 10 % | Tabla 4.2 (decisiones justificadas, incluido el pivote ADR-004) |
| Estado del proyecto / viabilidad | 10 % | Cap. 4.7 (viabilidad técnica, temporal, económica) |

## Elementos visuales generados automáticamente en TikZ

Los dos diagramas se dibujan directamente en LaTeX (no requieren imágenes externas):

- **Figura 4.1 — Gantt del proyecto** con hitos (anteproyecto, entrega intermedia, entrega final) y estado actual por fase, incluida la Fase 3 marcada como bloqueada.
- **Figura 4.2 — Flujo del pipeline** con los módulos del paquete `microraman`: carga → preprocesado → métricas → matching → estadística → entregable visual.

## Bloqueante activo

La ejecución del experimento con datos reales está pendiente de que el director del proyecto facilite la base de datos de referencia (Hagelskjær Microplastic Solution Library 1.1). Todo el código que la consume está implementado y probado con una base de datos sintética de sustitución.

## Si tu director pide cambios

Los capítulos están desacoplados: cada `.tex` en `capitulos/` se edita de forma independiente sin tocar el resto. Si necesitas:

- **Cambiar el título o el director:** edita `datos.tex`.
- **Añadir una referencia:** añade la entrada BibTeX a `bibliography.bib` y cítala con `\citep{clave}` o `\cite{clave}`.
- **Añadir una figura:** colócala en `imagenes/` y referénciala con `\includegraphics[width=...]{imagenes/nombre.png}`.
- **Cambiar márgenes, fuentes, colores:** todo está en `tfm.cls`.

## Entrega final

Una vez compilado, descarga el PDF desde Overleaf (icono de descarga, arriba a la derecha) y súbelo al campus virtual como indica la tarea "Seguimiento y entrega intermedia".
