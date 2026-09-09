# Proyecto ORI USB Cali 2026

## Objetivo

Desarrollar una primera versión de un sistema que permita centralizar y gestionar el ciclo de vida de los convenios institucionales de la Universidad de San Buenaventura Cali, permitiendo a la ORI realizar seguimiento desde la solicitud hasta la firma, archivo, vigencia, renovación y evaluación del convenio.

# Alcance y Restricciones

#### El MVP debe permitir:

- Gestionar usuarios con 3 roles:
    - Administrador (acceso total: crear, editar, eliminar todo).
    - Usuario ORI (puede ver toda la información en detalle, pero no puede crear, editar, ni eliminar).
    - Invitado (sin autenticación, solo consulta si existe un convenio con una entidad).
- Gestionar aliados (universidades, colegios, empresas, entidades gubernamentales).
    - Para empresas, incluir sector económico.
- Gestionar el ciclo de vida completo del convenio:
    - Solicitud (facultad/unidad solicitante).
    - Elaboración.
    - Revisión jurídica.
    - Envío a contraparte.
    - Revisión y firmas (6 firmas: 4 fijas, 2 variables).
    - Archivo y seguimiento.
- Registrar para cada convenio:
    - Tipo de convenio (según necesidad).
    - Programa o facultad asociada (puede ser estricto para un programa o para toda la universidad).
    - Fechas: inicio, vencimiento, renovaciones.
    - Responsables y contactos.
    - Estado actual y porcentaje de avance.
    - Actividades y próximos pasos.
    - Historial de cambios (trazabilidad).
    - Documentos asociados (versiones, avales, firmas, otrosíes), almacenados en OneDrive.
- Alertas automáticas:
    - 4 meses antes del vencimiento para decidir renovación.
- Evaluación del convenio después de firmado:
    - Permitir registrar si fue funcional o no valió la pena.
- Funcionalidad de autocompletado para renovaciones:
    - Copiar datos de un convenio existente para no llenar manualmente.
- Búsqueda y filtros por:
    - Aliado, estado, fechas, responsable, tipo, programa.
- Reporte de utilización:
    - Generar reporte de actividades realizadas en convenios vigentes.
- Interfaz sencilla, pensada para usuarios de la ORI.

<aside>
⛔

#### Fuera del alcance inicial

- Integraciones automáticas con correo electrónico.
- Integraciones con otros sistemas institucionales.
- Notificaciones avanzadas por múltiples canales (solo alertas internas en el sistema).
- Firma digital de convenios.
- Inteligencia artificial.
- Generación avanzada de informes (BI).
- Aplicación móvil.
- Automatización de carga de documentos (se suben manualmente).
- Sincronización automática con Word (se evaluará con TI en próxima reunión).
- Flujos altamente configurables por el usuario.
</aside>

# Reglas de negocio

1. **Solicitud de convenio**
    - Cualquier facultad o unidad administrativa puede solicitar un convenio.
    - La solicitud se hace mediante un formato que se envía a ORI.
2. **Tipos de aliados**
    - Universidad
    - Colegio
    - Empresa (requiere sector económico)
    - Entidad gubernamental
3. **Tipos de convenio**
    - Se define en la elaboración, según la naturaleza de la solicitud.
4. **Alcance del convenio**
    - Puede ser para un programa académico específico o para toda la universidad.
5. **Flujo del convenio** (etapas)
    - Solicitud → Elaboración → Revisión jurídica → Envío a contraparte → Revisión y firmas → Archivado y seguimiento
6. **Firmas**
    - 6 firmas en total: 4 fijas (autoridades universitarias) y 2 variables (según el caso).
7. **Documentos**
    - Todos los documentos se almacenan en una carpeta digital de OneDrive.
8. **Evaluación**
    - Una vez firmado, se debe permitir evaluar si el convenio fue funcional o no.
9. **Renovación**
    - No se llena manualmente desde cero: se autocompleta con datos del convenio anterior.
10. **Alertas**
    - Alerta automática 4 meses antes del vencimiento.
    - Se debe decidir si se renueva o no.
11. **Roles**
    - **Admin**: acceso total.
    - **Usuario ORI**: puede ver toda la información a detalle, pero no puede crear, editar ni eliminar
    - **Invitado** (sin login): solo puede ver si existe un convenio con X entidad, sin detalles.
12. **Trazabilidad**
    - Cada cambio, etapa, responsable y fecha debe quedar registrado en un historial.
