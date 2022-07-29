import axios from 'axios';
import { put, takeLatest } from 'redux-saga/effects';

function* fetchJob(action){
    console.log('in fetchJob', action);
    try {
        const res = yield axios.get(`/api/job`);
        yield put({ type: 'SET_JOB', payload: res.data });
    } catch (err) {
        console.log('fetchJob request failed', err);
        return;
    }
}

function* addJob(action){
    try{ 
        yield axios.post('/api/job', action.payload)
    }
    catch(err){
        console.error('error is', err)
    }
}

function* fetchMatchedCandidates() {
    try{
        const res = yield axios.get('/api/job/candidates/:id')
    }
    catch(err){
        console.log('Failed to fetch matched candidates', err)
    }
}

function* jobSaga() {
    yield takeLatest('FETCH_JOB', fetchJob);
    yield takeLatest('ADD_JOB', addJob);
    yield takeLatest('FETCH_MATCHED_CANDIDATES', fetchMatchedCandidates)
  }

export default jobSaga;