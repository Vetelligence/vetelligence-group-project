import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import {useDispatch} from 'react-redux';

// This component controls the approval status and drop down options for Employer Status.
function EmpStatusSelect ({empStatus, id}) {
  const dispatch = useDispatch();

  function updateStatus(){
    dispatch({
      type:'SET_EMPLOYER_APPROVED',
      payload: {id:id}
    })
  }


  return (
    <FormControl variant="standard" sx={{ m: 1, minWidth: 70}}>
      <Select
        labelId="demo-simple-select-standard-label"
        id="demo-simple-select-standard"
        value={empStatus}
        onChange={updateStatus}
        label="Status"
      >
        <MenuItem value={'pending'}>Pending</MenuItem>
        <MenuItem value={'approved'}>Approved</MenuItem>
      </Select>
    </FormControl>
  );
}

export default EmpStatusSelect