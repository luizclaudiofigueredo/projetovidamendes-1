import {destroyVisitanteAsync, updateVisitanteAsync} from './visitanteSlice'

function ButtonGroup(props:any) {
    function handleClick(e:any) {
        const payload = {
            visitante: {
                visitante_id: props.visitante_id,
            }
        }
        props.dispatch(destroyVisitanteAsync(payload));
    }
    return (
    <div className='btn-group float-end'>
        <button className='btn btn-warning' onClick={() => props.toggleEditForm(props.visitante_id)}>Editar</button>
        <button className='btn btn-danger' onClick={(e) => handleClick(e)}>Excluir</button>
    </div>
  )
}

export default ButtonGroup