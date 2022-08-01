import Button from '@mui/material/Button';
import DeleteIcon from '@mui/icons-material/Delete';
import {useDispatch} from 'react-redux'

function AdminDelete ({id}) {
    const dispatch = useDispatch();
    function deleteEmployer (){
        dispatch({
            type:'DELETE_EMPLOYER', 
            payload: {id:id}
        })
    }

    <Button onClick={deleteEmployer}>
        <DeleteIcon />
    </Button>
}


export default AdminDelete;