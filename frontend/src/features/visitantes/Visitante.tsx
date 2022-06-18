import React, { useEffect, useState } from 'react'
import ButtonGroup from './ButtonGroup';

function Visitante(props:any) {
  const [ nome, setNome ] = useState(props.visitante.nome);
  const [ sobrenome, setSobrenome ] = useState(props.visitante.sobrenome);
  const [ telefone, setTelefone ] = useState(props.visitante.telefone);
  const [ isEditing, setIsEditing ] = useState(props.visitanteToEdit === props.visitante.id);
  
  useEffect(()=>{
    setIsEditing(props.visitanteToEdit === props.visitante.id);  
  }, [props.visitanteToEdit, props.visitante.id])
  
  function submitHandler(e:any){
    e.preventDefault();
    const formData = {
      visitante: {
        id: props.visitante.id,
        nome: nome,
        sobrenome: sobrenome,
        telefone: telefone,
      }
    }
    props.submitEdit(formData);
    resetState();
  }

  function resetState() {
    setNome('');
    setSobrenome('');
    setTelefone('');
  }  

  const telefoneElement = <h2 className="card-text text-start">{props.visitante.telefone}</h2>
  const nomeElement = <p className="title text-start">{props.visitante.nome}</p>
  const sobrenomeElement = <p className="title text-start">{props.visitante.sobrenome}</p>
  const editNome = <input 
                      type='text'
                      className='form-control text-start my-2'
                      value={nome}
                      onChange={(e) => setNome(e.target.value)}
                    />
  const editSobrenome = <input 
                    type='text'
                    className='form-control text-start my-2'
                    value={sobrenome}
                    onChange={(e) => setSobrenome(e.target.value)}
                  />
  const editTelefone = <input 
                  type='text'
                  className='form-control text-start my-2'
                  value={telefone}
                  onChange={(e) => setTelefone(e.target.value)}
                />
  const submitButton = <button
                  type='submit'
                  className='form-control btn btn-primary'
                  onClick={(e) => submitHandler(e)}
                >
                Salvar
                </button>
  return (
    <div>
      <div className="row">
        <div className="col-8">
          {isEditing ? editTelefone : telefoneElement}
        </div>
        <div className="col-4">
            <ButtonGroup
               visitante_id={props.visitante.id}
               dispatch={props.dispatch}
               toggleEditForm={props.toggleEditForm}
            />
        </div>
      </div>
      <div className="row">
        <div className="col-8">
          {isEditing ? editNome : nomeElement}
        </div>
      </div>
      <div className="col-8">  
        <div className="col-8">
          {isEditing ? editSobrenome : sobrenomeElement}
        </div>        
      </div>
      <div className="row">
        <div className="col-2">
          {isEditing ? submitButton : ""}
        </div>
      </div>
    </div>
  )
}

export default Visitante