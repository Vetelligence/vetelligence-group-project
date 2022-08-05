import Button from '@mui/material/Button';
import DeleteIcon from '@mui/icons-material/Delete';
import {useDispatch} from 'react-redux'

//This page controls the delete button drop down for the Employer table.
function AdminDelete ({id}) {
    const dispatch = useDispatch();
    function deleteEmployer (){
        dispatch({
            type:'DELETE_EMPLOYER', 
            payload: {id:id}
        });
    }
    return (
    <Button onClick={deleteEmployer}>
        <DeleteIcon />
    </Button>
    );
}

export default AdminDelete;