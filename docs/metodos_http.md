# Métodos HTTP

Los métodos HTTP permiten realizar diferentes operaciones entre un cliente y un servidor. Para los siguientes ejemplos se utiliza JavaScript con `fetch()` y la API pública JSONPlaceholder.

- 1. GET
```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1")
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
    .catch(error => console.error("Error:", error));
```
- 2. POST
```javascript
fetch("https://jsonplaceholder.typicode.com/posts", {
    method: "POST",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify({
        title: "Mi publicación",
        body: "Este es un ejemplo de POST",
        userId: 1
    })
})
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
    .catch(error => console.error("Error:", error));
```
- 3. PUT
```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1", {
    method: "PUT",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify({
        id: 1,
        title: "Publicación modificada",
        body: "Contenido reemplazado",
        userId: 1
    })
})
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
    .catch(error => console.error("Error:", error));
```
- 4. PATCH
```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1", {
    method: "PATCH",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify({
        title: "Título actualizado"
    })
})
    .then(respuesta => respuesta.json())
    .then(datos => console.log(datos))
    .catch(error => console.error("Error:", error));
```
- 5. DELETE
```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1", {
    method: "DELETE"
})
    .then(respuesta => {
        console.log("Código de respuesta:", respuesta.status);

        if (respuesta.ok) {
            console.log("Solicitud de eliminación realizada correctamente.");
        }
    })
    .catch(error => console.error("Error:", error));
```

Los métodos HTTP permiten realizar distintas operaciones sobre los recursos de un servidor:

- GET: consultar información.
- POST: crear un recurso.
- PUT: reemplazar un recurso.
- PATCH: modificar parcialmente un recurso.
- DELETE: solicitar la eliminación de un recurso.
