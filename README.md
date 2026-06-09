# Pipeline-Analitico-y-Dashboard-de-Control-Operativo---Superstore
Este proyecto implementa una solución integral de Business Intelligence (BI) y analítica de datos, integrando un motor de base de datos relacional para el almacenamiento y limpieza, con una interfaz de visualización interactiva avanzada para la toma de decisiones ejecutivas.
## Tecnologías Utilizadas
* **Base de Datos:** PostgreSQL 18 & pgAdmin 4
* **Visualización & Modelado:** Power BI Desktop
* **Lenguajes:** SQL (PostgreSQL DDL/DML), DAX (Data Analysis Expressions)

## Arquitectura del Proyecto

1. **Capa de Datos (SQL):** * Estructuración del dataset `Sample - Superstore` (9,994 filas) en un entorno local de PostgreSQL.
   * Limpieza y tipado estricto de datos (formatos de fecha `DATE`, ID únicos como `INT` y métricas financieras como `NUMERIC`) mitigando errores de configuración regional de origen.
   * Asignación de llave primaria en `row_id` para garantizar la consistencia.

2. **Capa de Modelado (Power BI):**
   * Conexión directa mediante servidor `localhost` sin sobrecargar Power Query, heredando la estructura optimizada de SQL.
   * Creación de una dimensión de tiempo personalizada (`Dim_Tiempo`) mediante DAX para análisis cronológico fluido.
   * Implementación de un modelo relacional en estrella ($1 \rightarrow *$).

3. **Capa de Negocio (Métricas DAX):**
   * Creación de medidas analíticas clave controlando excepciones (ej. manejo de divisiones por cero en márgenes utilizando `DIVIDE` y conteos únicos con `DISTINCTCOUNT`).

## Vistas del Dashboard

El reporte final cuenta con una estética ejecutiva minimalista y sobria (fondos atenuados y contenedores limpios) dividida en:
* **Vista Ejecutiva:** Monitoreo macro de Ventas, Utilidad, Márgenes, Órdenes y Clientes Únicos, con tendencias mensuales indexadas de Enero a Diciembre.
* **Product Performance:** Análisis profundo de rentabilidad que aísla los productos líderes (*Top 10*) e identifica subcategorías críticas con pérdidas netas recurrentes (*Tables*, *Supplies* y *Bookcases*).
* **Clientes & Geografía:** Desglose del volumen comercial por Región y Segmentos corporativos/consumidor.

---
*Desarrollado por Juan Esteban Rincón Piratoba - Economista especializado en Estadística y Econometría.*
