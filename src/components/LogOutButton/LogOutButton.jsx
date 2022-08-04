import React from 'react';
import Button from '@mui/material/Button';

import { useDispatch } from 'react-redux';
import { useHistory } from 'react-router-dom';

function LogOutButton(props) {
  const dispatch = useDispatch();
  const history = useHistory();
  return (
    <Button
      // This button shows up in multiple locations and is styled differently
      // because it's styled differently depending on where it is used, the className
      // is passed to it from it's parents through React props
      className={props.className}
      onClick={() => {dispatch({ type: 'LOGOUT' }), history.push('/home')}}
    >
      Log Out
    </Button>
  );
}

export default LogOutButton;
