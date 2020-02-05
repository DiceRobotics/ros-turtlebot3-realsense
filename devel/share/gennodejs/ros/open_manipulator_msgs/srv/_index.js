
"use strict";

let SetKinematicsPose = require('./SetKinematicsPose.js')
let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let SetActuatorState = require('./SetActuatorState.js')
let GetKinematicsPose = require('./GetKinematicsPose.js')
let GetJointPosition = require('./GetJointPosition.js')
let SetJointPosition = require('./SetJointPosition.js')

module.exports = {
  SetKinematicsPose: SetKinematicsPose,
  SetDrawingTrajectory: SetDrawingTrajectory,
  SetActuatorState: SetActuatorState,
  GetKinematicsPose: GetKinematicsPose,
  GetJointPosition: GetJointPosition,
  SetJointPosition: SetJointPosition,
};
