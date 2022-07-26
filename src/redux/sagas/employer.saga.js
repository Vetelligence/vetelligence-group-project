import axios from 'axios';
import { put, takeLatest } from 'redux-saga/effects';


function* addEmployer(action){
    try{ 
        yield axios.post('/api/user/register', action.payload)
    }
    catch(err){
        console.error('error is', err)
    }
}




function* employerSaga() {
    yield takeLatest('SET_EMPLOYER_INFO', addEmployer);
  }

export default employerSaga;