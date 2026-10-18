const boton = document.getElementById("btnBuscar");
const resultado = document.getElementById("resultado");

boton.addEventListener("click", buscarPokemon);

async function buscarPokemon() {
    const nombre = document.getElementById("nombrePokemon").value
        .trim()
        .toLowerCase();

    if (nombre === "") {
        resultado.innerHTML = "<p>Escribe el nombre de un Pokémon.</p>";
        return;
    }

    resultado.innerHTML = "<p>Buscando Pokémon...</p>";

    try {
        const respuesta = await fetch(
            `https://pokeapi.co/api/v2/pokemon/${encodeURIComponent(nombre)}`
        );

        if (!respuesta.ok) {
            throw new Error("Pokémon no encontrado");
        }

        const pokemon = await respuesta.json();

        const imagen =
            pokemon.sprites.other["official-artwork"].front_default ||
            pokemon.sprites.front_default;

        resultado.innerHTML = `
            <h2>${pokemon.name.toUpperCase()}</h2>

            <img src="${imagen || ""}"
                 alt="${pokemon.name}"
                 width="200">

            <p><strong>ID:</strong> ${pokemon.id}</p>

            <p><strong>Altura:</strong> ${pokemon.height / 10} m</p>

            <p><strong>Peso:</strong> ${pokemon.weight / 10} kg</p>
        `;

    } catch (error) {
        resultado.innerHTML = `
            <p>Error: Pokémon no encontrado o problema de conexión.</p>
        `;
    }
}