import { combineReducers } from 'redux';
import errors from './errors.reducer';
import user from './user.reducer';
import intake from './intake.reducer';
import job from './job.reducer';
import skills from './skills.reducer';
import currentJob from './currentJob.reducer';
import admin from './admin.reducer'
import { matchedCandidates } from './matchedCandidates.reducer';
import status from './status.reducer';
// rootReducer is the primary reducer for our entire project
// It bundles up all of the other reducers so our project can use them.
// This is imported in index.js as rootSaga

// Lets make a bigger object for our store, with the objects from our reducers.
// This is what we get when we use 'state' inside of 'mapStateToProps'
const rootReducer = combineReducers({
  errors, // contains registrationMessage and loginMessage
  user, // will have an id and username if someone is logged in
  intake,
  job,
  skills,
  currentJob,
  admin,
  matchedCandidates,
  status,
});

export default rootReducer;
