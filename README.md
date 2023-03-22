# Template_MVVM_SwiftUI

Instrucciones para instalación de template:

1. Abrir la carpeta ~/Library/Developer/Xcode/
2. Crear la carpeta Templates y entrar a ella
3. Crear la carpeta File Templates y entrar a ella
4. Crear la carpeta Custom Templates
5. Copia y pega el template .xctemplate dentro de Custom Templates

Reinicia tu Xcode y vuelva a ejutarlo, agrega un New File y busca el template de MVVM SwiftUI Module.


## Capas

![Screenshot 2023-03-21 at 23 44 33](https://user-images.githubusercontent.com/2323240/226813420-12105486-a06f-4725-b05a-85415d419140.png)

- **Builder**: Esta capa tiene la responsabilidad de iniciar el módulo, crea los objetos del Router y el ViewModel, contiene una acción que sólo sirve para poder mostrar el View.
- **ViewModel**: Esta capa tiene la responsabilidad de tener todo el modelo de negocio, recibe ordenes desde el View. Si es necesario comunicarse con el View para mostrar un resultado, se hace por medio del State mandando el ViewData con el contenido que se mostrará en el View.
- **View**: Esta capa contiene toda la maquetación de la pantalla, su única comunicación es con el ViewModel.
- **State**: Esta capa indica al View que es lo que mostrará según el State que ordene el ViewModel. Por default se muestra **loading**, sirve para mostrar un loader mientras se ejecuta un servicio y se espera una respuesta. *Loaded* Sirve para mostrar un view con los controles para que el usuario pueda interactuar, se usa el ViewData para poder mostrar información relevante.
- **ViewData**: Esta capa contiene información que se estará mostrando en el View, puede contener Models que viene de una Base de Datos o de un Servicio, aunque lo recomendable es solo contener únicamente la información que se usará en el View.
- **Tracker**: Esta capa se usa para poder tener y reportar por medio de una herramienta de analytics, en caso de que no se tenga este trackeo, se puede eliminar.
- **Router**: Esta es la capa encargada de iniciar la navegación entre módulos y recibe ordenes directas del ViewModel.

## Conectando Módulos
![Screenshot 2023-03-21 at 23 44 33](https://user-images.githubusercontent.com/2323240/226813436-67bc0a29-43a1-418b-85bc-9656116ce439.png)
