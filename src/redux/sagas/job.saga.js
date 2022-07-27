import axios from 'axios';
import { put, takeLatest } from 'redux-saga/effects';

function* fetchJob(action){
    console.log('in fetchJob', action);
    try {
        const res = yield axios.get(`/api/job/${action.payload}`);
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

function* fetchSkills(action){
    console.log('in fetchSkills', action);
    try {
        const res = yield axios.get(`/api/job/${action.payload}`);
        yield put({ type: 'SET_JOB', payload: res.data });
    } catch (err) {
        console.log('fetchSkills request failed', err);
        return;
    }
}

function* jobSaga() {
    yield takeLatest('FETCH_JOB', fetchJob);
    yield takeLatest('ADD_JOB', addJob);
    yield takeLatest('FETCH_SKILLS', fetchSkills);
  }

export default jobSaga;