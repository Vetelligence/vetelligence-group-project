import axios from 'axios';
import { put, takeLatest } from 'redux-saga/effects';

// worker Saga: will be fired on "FETCH_USER" actions
function* fetchUser() {
  try {
    const config = {
      headers: { 'Content-Type': 'application/json' },
      withCredentials: true,
    };

    // the config includes credentials which
    // allow the server session to recognize the user
    // If a user is logged in, this will return their information
    // from the server session (req.user)
    const response = yield axios.get('/api/user', config);

    // now that the session has given us a user object
    // with an id and username set the client-side user object to let
    // the client-side code know the user is logged in
    yield put({ type: 'SET_USER', payload: response.data });
  } catch (error) {
    console.log('User get request failed', error);
  }
}

function* updateUserInfo(action) {
  try{
    const res = yield axios.put(`/api/user/update/:id`, action.payload)
    yield put({type: 'FETCH_USER'})
  }
  catch(err){
    console.log('Failed to update user info', err)
  }
}

function* updateProfilePicture(action){
  try{
      const  url  = yield axios.get('/api/profileImage')
       
      console.log(url);

      yield axios.put(url.data, action.payload, {
        headers:{ "ContentType": "multipart/form-data"}
      })
        .then(res => console.log(res));
  }

  catch (err) {
    console.error('err in uploading file', err)
  }
}

function* setEmployerApproved (action) {
  try{
    yield axios.put('api/user/employer/status/'+ action.payload.id)
    yield put ({type: 'FETCH_EMPLOYERS'})
  }
  catch(err){
    console.error('employer approval failed', err)
  }
}

function* deleteEmployer (action) {
  try {
    yield axios.delete('api/user/employer/'+ action.payload.id);
    yield put({type:'FETCH_EMPLOYERS'});
  }
  catch(err) {
    console.error('employer delete failed', err);
  }}


function* fetchEmployers(action){
  try{
   const employers = yield axios.get(`api/user/employer`);
   console.log('employer fetch success', employers.data)
   yield put({
    type: 'SET_EMPLOYER_LIST',
    payload: employers.data
   });

  }
  catch (err){
    console.error('error fetching employers', err);
  }

}

function* fetchVeterans(action) {
  try {
    const veterans = yield axios.get(`api/user/veteran`);
    console.log('veteran fetch success', veterans.data);
    yield put ({
      type: 'SET_VETERAN_LIST',
      payload: veterans.data
    })
    
  }
  catch (err){
    console.error('error fetching veterans', err);

  }
}



function* userSaga() {
  yield takeLatest('FETCH_USER', fetchUser);
  yield takeLatest('FETCH_EMPLOYERS', fetchEmployers);
  yield takeLatest('FETCH_VETERANS', fetchVeterans);
  yield takeLatest('UPDATE_USER_INFO', updateUserInfo);
  yield takeLatest('SET_EMPLOYER_APPROVED', setEmployerApproved);
  yield takeLatest('DELETE_EMPLOYER', deleteEmployer);
  yield takeLatest('UPDATE_PROFILE_PICTURE', updateProfilePicture);
}

export default userSaga;
