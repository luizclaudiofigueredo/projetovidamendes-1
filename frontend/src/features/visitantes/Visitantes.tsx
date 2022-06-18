import React, { useEffect, useState } from 'react'
import { useDispatch } from 'react-redux';
import { useAppSelector } from '../../app/hooks';
import { AppDispatch } from '../../app/store';
import Visitante from './Visitante';
import VisitanteForm from './VisitanteForm';
import { fetchVisitantesAsync, selectVisitantes, Statuses, selectStatus, updateVisitanteAsync} from './visitanteSlice';

function Visitantes() {
  const visitantes = useAppSelector(selectVisitantes);
  const status = useAppSelector(selectStatus);
  const dispatch = useDispatch<AppDispatch>();
  
  const [ visitanteToEdit, setVisitanteToEdit ] = useState(0);

  useEffect(() => {
    dispatch(fetchVisitantesAsync());
  },[dispatch])

  function toggleEditForm(visitante_id?:number) {
    if (visitanteToEdit === visitante_id) {
      setVisitanteToEdit(0)
    } else {
      setVisitanteToEdit(visitante_id as number);
    }
  }

  function submitEdit(formData:any) {
    dispatch(updateVisitanteAsync(formData));
    toggleEditForm();
  }

  let contents;

  if (status !== Statuses.UpToDate) {
    contents = <div>{status}</div>
  } else {
    contents = <div className="card">
        <div className='card-body'>
            <h3>{status}</h3>
            <VisitanteForm />
            { visitantes && visitantes.length > 0 && visitantes.map(visitante => {
                return <div key={visitante.id} style={{margin: "5em"}}>
                    <Visitante
                        dispatch={dispatch}
                        visitante={visitante}
                        toggleEditForm={() => toggleEditForm(visitante.id)}
                        visitanteToEdit={visitanteToEdit}
                        submitEdit={submitEdit}
                    />
                </div>
            })}
        </div>
    </div>
  }

  return (
    <>
    <h1>Visitantes</h1>
    <div>{contents}</div>
    </>
  )
}

export default Visitantes;