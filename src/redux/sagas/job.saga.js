import axios from 'axios';
import { put, takeLatest } from 'redux-saga/effects';

//Fetch job displays all jobs on the app, some logic provided links jobs to veterans based on skills.
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

//Add job POSTs a job to the job table - added by Employers
function* addJob(action){
    try{ 
        yield axios.post('/api/job', action.payload)
        yield put({type: 'FETCH_CURRENT_JOB', payload: action.payload.userId})
    }
    catch(err){
        console.error('error is', err)
    }
}

//Finds the top 5 jobs on the website to display on the Veteran Dash for visitors to get excited to create an account
function* fetchTopJobs(action) {
    try {
        const res = yield axios.get(`/api/job/veteran-landing`);
        yield put({ type: 'SET_JOB', payload: res.data });
    }
    catch(err) {
        console.log('Error in Fetch Top Jobs', err)
        return;
    }
}

//Fetches the current job for employers viewing their dashboard
function* fetchCurrentJob(action){
    console.log('made it into fetchCurrent');
    try{
        const response = yield axios.get(`/api/job/current-job/${action.payload.id}`)
        yield put({
            type: 'SET_CURRENT_JOB',
            payload: response.data
        })
    }
    catch(err){
        console.error('error in fetchCurrentJob', err)
    }
}

//POST to allow employers to update the Veteran Job status
function* addStatus(action){
    try{
        const res = yield axios.post('/api/job/matched/', action.payload)
        console.log('This is the add status payload..',action.payload)
        yield put({
            type: 'FETCH_CURRENT_JOB',
            payload: {id: action.payload.jobs_id}
        })
    }
    catch(err) {
        console.error('error is', err)
    }
}

//Delete Route to delete a job from the jobs table
function* deleteFromJobList(action) {
    try{
        const res = yield axios.put('/api/job/remove/' + action.payload.id)
        yield put({
            type: 'FETCH_JOB'
        })
    }
    catch(err){
        console.log('Failed to delete from job list', err)
    }
}

//GETs the jobs associated with a veteran by ID
function* fetchVetsJobs() {
    try{
        const res = yield axios.get('/api/job/vets-jobs/')
        yield put({
            type: 'SET_VETS_JOBS',
            payload: res.data
        })
    }
    catch(err){
        console.log('failed to get vets jobs', err)
    }
}

function* jobSaga() {
    yield takeLatest('FETCH_JOB', fetchJob);
    yield takeLatest('ADD_JOB', addJob);
    yield takeLatest('FETCH_CURRENT_JOB', fetchCurrentJob);
    yield takeLatest('ADD_STATUS', addStatus )
    yield takeLatest('DELETE_FROM_JOB_LIST', deleteFromJobList)
    yield takeLatest('FETCH_TOP_JOBS', fetchTopJobs);
    yield takeLatest('FETCH_VETS_JOBS', fetchVetsJobs)
  }

export default jobSaga;