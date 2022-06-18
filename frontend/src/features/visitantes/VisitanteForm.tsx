import React, { useState } from 'react'
import { useDispatch } from 'react-redux'
import { AppDispatch } from '../../app/store';
import {createVisitanteAsync} from './visitanteSlice'

function VisitanteForm() {
  const dispatch = useDispatch<AppDispatch>();
  
  const [ nome, setNome ]  = useState('');
  const [ sobrenome, setSobrenome ]  = useState('');
  const [ telefone, setTelefone ]  = useState('');
  const [ grupo, setGrupo ]  = useState(1);
  const [ observacoes, setObservacoes ]  = useState('');

  function submitHandler(e:any){
    e.preventDefault();
    const formData = {
      visitante: {
        nome: nome,
        sobrenome: sobrenome,
        telefone: telefone,
        grupo: grupo,
        observacoes: observacoes
      }
    }
    dispatch(createVisitanteAsync(formData));
    resetState();
  }

  function resetState() {
    setNome('');
    setSobrenome('');
    setTelefone('');
    setGrupo(1);
    setObservacoes('');
  }

  return (
    <div>
      <h1>Formulário de Visitantes</h1>
      <form>
        <input 
           type="text"
           className='form-control text-start my-2'
           name="nome"
           placeholder = "Nome"
           value={nome}
           onChange={(e) => setNome(e.target.value)}
        />
        <input 
           type="text"
           className='form-control text-start my-2'
           name="sobrenome"
           placeholder="Sobrenome"
           value={sobrenome}
           onChange={(e) => setSobrenome(e.target.value)}
        />
        <input 
           type="text"
           className='form-control text-start my-2'
           name="telefone"
           placeholder="Telefone/WhatsApp"
           value={telefone}
           onChange={(e) => setTelefone(e.target.value)}
        />
        <select name='grupo' value={grupo} className='form-control text-start my-2' onChange={e => setGrupo(parseInt(e.target.value))}>
          <option value='1'>Criança</option>
          <option value='2'>Adolescente</option>
          <option value='3'>Jovem</option>
          <option value='4'>Adulto</option>
          <option value='5'>Idoso</option>
        </select>        

        <textarea 
           className='form-control text-start my-2'
           name="observacoes"
           placeholder="Observações"
           value={observacoes}
           onChange={(e) => setObservacoes(e.target.value)}
        />
        <button
           type="submit"
           className='btn-primary rounded p-2'
           onClick={(e) => {
            submitHandler(e)
           }}
        >Enviar</button>
      </form>
    </div>
  )
}

export default VisitanteForm