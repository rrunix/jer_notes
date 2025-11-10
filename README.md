# Material docente en abierto de la asignatura Juegos en Red del Grado en Diseño y Desarrollo de Videojuegos

Material docente en abierto de la asignatura "Juegos en Red" del Grado en Diseño y Desarrollo de Videojuegos de la Universidad Rey Juan Carlos (URJC). Impartida en dos sedes, campus de Quintana y Móstoles. Depositado en el BURJC Digital [https://hdl.handle.net/10115/112657](https://hdl.handle.net/10115/112657).

**Autores**: 

- Rubén Rodríguez (ruben.rodriguez@urjc.es) - URJC
- Natalia Madrueño (natalia.madrueno@urjc.es) - URJC

**Fecha**: 10/11/2025.

**Licencia**: Este trabajo está licenciado bajo [Creative Commons Reconocimiento-CompartirIgual 4.0 Internacional](https://creativecommons.org/licenses/by-sa/4.0/).

## Sobre Este Repositorio

Este repositorio contiene todo el material en abierto de la asignatura "Juegos en Red", desarrollado con Quarto como un libro interactivo. El material incluye:

- **Guía de estudio**: Planificación y objetivos del curso
- **Apuntes de la asignatura**: Apuntes completos de todos los temas
- **Diapositivas**: Presentaciones utilizadas en clase (incluídas en formato PDF)
- **Ejercicios**: Problemas y prácticas para consolidar conocimientos
- **Ejemplos de código**: Referencias a los repositorios.

El contenido cubre los conceptos fundamentales y la implementación práctica de juegos multijugador en red, integrando teoría y práctica en cinco áreas principales: redes de ordenadores, desarrollo en el cliente, desarrollo de juegos con tecnologías web, desarrollo en el servidor y comunicación cliente-servidor en tiempo real.

## Estructura del Contenido

El libro está organizado en tres partes principales:

### Parte 1: Introducción a Redes
Ubicada en `ch/part_networks/`, esta sección cubre los fundamentos de redes de ordenadores:
- **Capítulo 1**: Introducción a las Redes de Ordenadores (`network_intro/`)
- **Capítulo 2**: Capa de Acceso a la Red (`access_layer/`)
- **Capítulo 3**: Capa de Red (`network_layer/`)
- **Capítulo 4**: Capa de Transporte (`transport_layer/`)
- **Capítulo 5**: Capa de Aplicación (`application_layer/`)

### Parte 2: Desarrollo en el Cliente
Ubicada en `ch/part_client/`, esta sección cubre tecnologías de desarrollo web:
- **JavaScript**: Fundamentos y programación orientada a objetos (`js/`)
- **HTML y CSS**: Estructura y estilo de páginas web (`htmlcss/`)
- **Phaser**: Motor de juegos 2D para navegador (`phaser/`)

### Parte 3: Desarrollo en el Servidor y Comunicación
Ubicada en `ch/part_servercoms/`, esta sección cubre la comunicación cliente-servidor:
- **APIs REST**: Introducción, consumo en el cliente e implementación en el servidor (`rest/`)
- **WebSockets**: Comunicación bidireccional en tiempo real, cliente y servidor (`ws/`)

### Recursos Adicionales

- **Diapositivas**: Material de presentación en el directorio `slides/` (formato PDF)
- **Ejercicios**: Problemas y prácticas en `ch/exercises/`
- **Ejemplos de Código**: Implementaciones de ejemplo en `ch/code/`
- **Guía de Estudio**: Resumen completo del curso en `ch/study/study_guide.qmd`

## Estructura del Proyecto

```
jerbook/
├── ch/                         # Capítulos principales del contenido
│   ├── part_networks/          # Fundamentos de redes
│   ├── part_client/            # Desarrollo en el cliente
│   ├── part_servercoms/        # Servidor y comunicación
│   ├── exercises/              # Ejercicios prácticos
│   ├── code/                   # Ejemplos de código
│   ├── study/                  # Guia de estudio
│   └── slides/                 # Referencias a diapositivas
├── slides/                     # Diapositivas en PDF
├── images/                     # Recursos de imágenes
├── _quarto.yml                 # Configuración de Quarto
├── index.qmd                   # Página principal del libro
├── cover/                      # Portada del libro
├── references.bib              # Bibliografía
└── references.qmd              # Sección de referencias
```

## Requisitos Previos

Antes de compilar el libro, asegúrate de tener instalado lo siguiente:

1. **Quarto**: Descárgalo desde [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)
2. **Mermaid CLI**: Para renderizar diagramas
   ```bash
   npm install -g @mermaid-js/mermaid-cli
   ```
3. **WeasyPrint** (para generación de PDF): Instálalo mediante pip
   ```bash
   pip install weasyprint
   ```

## Compilar el Libro

### Paso 1: Preparar las Diapositivas

Es necesario tener instalado `pdftoppm`.

Para incluir las diapositivas de presentación en el libro, coloca los archivos PDF en las carpetas correspondientes dentro del directorio `slides/`. Luego ejecuta el script de conversión:

```bash
./convert_pdfs_to_images.sh
```

Este script procesará automáticamente todos los PDFs en el directorio `slides/` y generará las imágenes necesarias para incluirlas en el libro. Las diapositivas están organizadas por tema en las siguientes carpetas:
- `intro_cn/` - Introducción a redes de ordenadores
- `net_access_layer/` - Capa de acceso a la red
- `net_layer/` - Capa de red
- `transport_layer/` - Capa de transporte
- `app_layer/` - Capa de aplicación
- `desarrollo_cliente/` - Desarrollo en el cliente
- `desarrollo_cliente_oop/` - Programación orientada a objetos
- `phaser_intro/` - Introducción a Phaser
- `rest_api/` - APIs REST
- `websockets/` - WebSockets

### Paso 2: Pre-renderizar los Diagramas

Es necesario tener instalado mermaid-cli. Para instalarlo con node:

```bash
npm install -g @mermaid-js/mermaid-cli
```

Ejecuta el script de pre-procesamiento de diagramas Mermaid:
```bash
./convert_mermaid.sh
```

Este script convierte los diagramas Mermaid a imágenes para mejorar la compatibilidad entre formatos de salida.

### Paso 3: Compilar el Libro

#### Generar Versión HTML
```bash
quarto render
```

La salida HTML se generará en el directorio `_book/`.

#### Generar Versión PDF
```bash
quarto render --to pdf
```

El PDF incluirá la portada personalizada definida en `cover/_cover.html`.

#### Generar un Formato Específico
```bash
quarto render --to html
# o
quarto render --to pdf
```

### Paso 4: Previsualizar el Libro

Para previsualizar el libro con recarga automática durante el desarrollo:
```bash
quarto preview
```

Esto iniciará un servidor local (típicamente en `http://localhost:4200`) y se actualizará automáticamente cuando hagas cambios.

## Configuración

La configuración del libro está definida en `_quarto.yml`:
- **Idioma**: Español (`lang: es`)
- **Formatos de Salida**: HTML y PDF
- **Tema HTML**: Cerulean con CSS personalizado (`styles.css`)
- **Motor PDF**: WeasyPrint
- **Numeración**: Secciones numeradas hasta profundidad 2
- **Bibliografía**: Formato BibTeX en `references.bib`

## Contribuir

Al añadir nuevo contenido:
1. Coloca los archivos de capítulos en el directorio de parte apropiado bajo `ch/`
2. Actualiza `_quarto.yml` para incluir los nuevos capítulos en la estructura del libro
3. Añade cualquier imagen al directorio `images/`
4. Actualiza las entradas de bibliografía en `references.bib` según sea necesario
5. Sigue el formato Quarto markdown existente y las convenciones de estilo

## Soporte

Para preguntas o problemas relacionados con el contenido del curso, contacta con los autores en sus respectivas direcciones de correo electrónico mencionadas arriba.
