# `EduTracker  v0.1`  dApp de Gestion Escolar
Trabajo de desarrollo para la graduacion y certificacion del ICP HUB Mexico de Junio-Julio 2024!  


## Descripcion de la dApp EduTracker  v0.1:
`EduTracker ` es una aplicación integral diseñada en el lenguaje de programacion `Motoko` desarrollado por `DFinity` para la `Internet Computer ICP Blockchain`. EduTracker Pro esta diseñada para gestionar información de estudiantes y profesores, monitorear el progreso académico de los estudiantes, y automatizar procesos administrativos, optimizando el tiempo y esfuerzo de los educadores.

## Metodos y Funciones Utilizadas en el desarrolo del Codigo actual en Motoko:

Aggregar Estudiantes  
    -Creacion de Hashmap: `Estudiantes.Hashmap`  
    -Hashmap `Estudiantes.put` : Agrega a los Estudiantes al hashmap  
    
Borrar Estudiantes:  
    -`Estudiantes.delete(delete)`  
    -`Switch/Case` Usado para ver si el input del nombre del profesor existe o no! Si no existe regresa mensaje, y si existe, lo termina borrando.  
    
Aggregar Profesores  
    -`if/else:` Condiciones para el despliegue de variante de errores/result  
    -`result:` despligue de errores cuando no se ingresan todas las casillas  
    -Creacion de Hashmap : `Professors.Hashmap`  
    -`Hashmap Professors.put`  
    
Borrar Profesores:  
    -`Professors.delete(delete)`  
    -Usa `Switch/Case` para ver si el input del nombre del profesor existe o no! Si no existe regresa mensaje, y si existe, lo termina borrando.  
    
Otras Funciones y Metodos Usados:  
    -`Types:` Estudiates, Anos, Meses, Semanas, Dias, Tracker, Materias/Subjects, Scores  
    -`Nested Types:` Typos con elementos, que estan adentro de otros Types con otros elementos.  
    -`Concatenacion` en la respuesta de mensaje.  
    -`await` Nos permite esperar que un mensaje asyncrono nos de una respuesta antes de continuar el codigo.  
    -`Module` // Muevo todos los Types a la carpeta nueva de modulo, y agrego Public a las variables, ya en el mero main.mo tengo que importar y modficicar los typos a MyTypes.estudiantes.  


----------------------------------------------------  
Desarollador: Cesar Anaya  
https://x.com/IC_Pirate  
https://github.com/Czarean  
czardcryptopirate@gmail.com  
Discord: crypto_pirate.  


Soy noob en desarollo, Motoko es mi primer lenguage, y si desean ayudarme o aconsejarme sobre el codigo, pues sepan que estaria muy agradecido y emocionado de colaborar y aprender de otros desarolladores de motoko y Frontend. Pueden contactarme a mi correo, o por mensaje privado en mi cuenta de X (Twitter), o Discord.
______________________________________________________________________________________________________________________________________________

## -------Mi Vision de EduTracker Pro completamente terminada------

## EduTracker Pro y sus Características Principales  
Gestión de Información de Estudiantes y Profesores:  
    `Base de Datos:` Almacena información detallada de estudiantes y profesores, incluyendo datos personales, historial académico, y contactos.  
    `Perfil Personalizado:` Cada estudiante y profesor tiene un perfil personalizado con información relevante y actualizada.  

Seguimiento del Progreso de Estudiantes:  
    `Registro de Calificaciones:` Permite a los profesores ingresar y actualizar calificaciones fácilmente.  
    `Reporte de Progreso:` Genera reportes detallados sobre el rendimiento académico de cada estudiante.  
    `Alertas y Notificaciones:` Envía alertas automáticas a estudiantes y padres sobre el desempeño académico y áreas que necesitan atención.  

Automatización de Procesos Administrativos:  
    `Generación de Reportes:` Crea reportes administrativos y académicos instantáneamente.  

Interfaz Intuitiva y Amigable:  
    `Dashboard Interactivo:` Un panel de control fácil de usar que proporciona una visión general del estado actual de la escuela.  
    `Acceso Móvil via Web Browser:` Compatible con dispositivos móviles para que estudiantes y profesores puedan acceder a la información desde cualquier lugar.  

Seguridad y Privacidad:  
    `Protección de Datos:` Utiliza encriptación y medidas de seguridad robustas para proteger la información personal de estudiantes y profesores.  
    `Acceso Controlado:` Permite establecer permisos de acceso específicos para diferentes usuarios, asegurando que solo personal autorizado pueda acceder a información sensible.  

Beneficios  
    `Eficiencia Administrativa:` Reduce significativamente el tiempo dedicado a tareas administrativas, permitiendo a los profesores concentrarse más en la enseñanza.  
    `Mejora del Rendimiento Académico:` Facilita el seguimiento y apoyo personalizado para cada estudiante, promoviendo un mejor rendimiento académico.  
    `Comunicación Efectiva:` Mejora la comunicación entre profesores, estudiantes y padres mediante notificaciones y reportes automatizados.  
    `Acceso Rápido a la Información:` Proporciona acceso instantáneo a la información académica y administrativa, mejorando la toma de decisiones.  


EduTracker Pro es la solución ideal para cualquier institución educativa que desee modernizar y optimizar sus operaciones diarias, promoviendo un ambiente educativo más eficiente y efectivo.

______________________________________________________________________________________________________________________________________________


## Beneficios de Desarrollar EduTracker Pro en la Blockchain de ICP
Seguridad y Transparencia:  
    `Integridad de los Datos:` La blockchain garantiza que todos los registros de estudiantes y profesores sean inmutables y verificables, evitando manipulaciones y fraudes.  
    `Transparencia:` Las transacciones y cambios en los datos pueden ser auditados en tiempo real, asegurando transparencia en la gestión de información académica y administrativa.  

Descentralización:  
    `Eliminación de Intermediarios:` Al operar en una red descentralizada, se eliminan los intermediarios, reduciendo costos y complejidad administrativa.  
    `Autonomía:` La escuela tiene control total sobre sus datos y procesos, sin depender de proveedores de servicios centralizados.  

Accesibilidad y Disponibilidad:  
    `Acceso Global:` La información puede ser accesible desde cualquier lugar del mundo, permitiendo a estudiantes y profesores acceder a sus datos en cualquier momento.  
    `Alta Disponibilidad:` La infraestructura descentralizada de ICP asegura que la aplicación esté disponible 24/7 sin riesgo de caídas por problemas de servidores centralizados.  

Costos Reducidos:  
    `Reducción de Gastos de Infraestructura:` Al utilizar la blockchain de ICP, no se necesitan servidores centralizados costosos ni infraestructura de mantenimiento.  
    `Transacciones Económicas:` Las operaciones en la blockchain de ICP son generalmente más económicas comparadas con las tarifas de servicios centralizados.  

Privacidad y Control de Datos:  
    `Protección de Datos Personales:` Los datos sensibles de estudiantes y profesores están cifrados y solo accesibles para usuarios autorizados, respetando las normativas de privacidad.  
    `Propiedad de los Datos:` Los usuarios tienen control sobre sus datos personales, pudiendo gestionar su uso y acceso.  

Innovación y Futuro-Proofing:  
    `Ecosistema Innovador:` Desarrollar en la blockchain de ICP coloca a la aplicación en el ecosistema de una de las tecnologías más avanzadas y emergentes, facilitando la integración de futuras innovaciones.  
    `Evolución Tecnológica:` La blockchain de ICP está diseñada para evolucionar y escalar, asegurando que la aplicación pueda crecer y adaptarse a nuevas demandas sin necesidad de reestructuraciones significativas.  

Confianza y Credibilidad:  
    `Reputación de la Blockchain:` Utilizar la blockchain de ICP puede incrementar la confianza de los usuarios en la integridad y seguridad de la aplicación.  
    `Cumplimiento Normativo:` Facilita el cumplimiento de regulaciones y normativas educativas y de protección de datos, al proporcionar registros inmutables y verificables.  

Automatización Inteligente:  
    `Contratos Inteligentes:` La utilización de contratos inteligentes permite la automatización de procesos administrativos y académicos, como el registro de calificaciones y la generación de certificados, con mínima intervención humana.  
    
## Resumen
Desarrollar EduTracker Pro en la blockchain de ICP no solo proporciona una plataforma segura, transparente y eficiente, sino que también empodera a las instituciones educativas con herramientas avanzadas y accesibles globalmente. Esta integración asegura que la aplicación esté preparada para enfrentar los desafíos del futuro, ofreciendo una experiencia educativa de alta calidad y confiabilidad.
