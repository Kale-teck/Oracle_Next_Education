const criarTarefa = (event) => {
   event.preventDefault()

   const lista = document.querySelector('[data-lista]')
   const input = document.querySelector('[data-form-input]')
   const valor = input.value

   
   const tarefa = document.createElement('li')
   tarefa.classList.add('task')
   const conteudo = `<p class="content">${valor}</p>`;

   tarefa.innerHTML = conteudo
   
   lista.appendChild(tarefa)

   input.value = ''
}


const novaTarefa = document.querySelector('[data-form-button]')


novaTarefa.addEventListener('click', criarTarefa) // ao clicar no botão ele chama criarTarefa