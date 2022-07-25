import { put, takeLatest } from 'redux-saga/effects';
import axios from 'axios';



//sends axios request to server to grab mos data for specific branch
function*  fetchMos (action) {
    try{
      const response = yield axios.get('/api/mos/'+ action.payload.branch);
            console.log(response.data);
            yield put ({
                type: 'SET_MOS',
                payload: response.data
            })
        
    }
    catch (err){
        console.error('error in get mos', err);
    }
}


function* intakeSaga() {

  yield takeLatest ('FETCH_MOS', fetchMos);
  }
  
  export default intakeSaga;