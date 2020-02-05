// Auto-generated. Do not edit!

// (in-package object_analytics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackedObject = require('./TrackedObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackedObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracked_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracked_objects')) {
        this.tracked_objects = initObj.tracked_objects
      }
      else {
        this.tracked_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObjects
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracked_objects]
    // Serialize the length for message field [tracked_objects]
    bufferOffset = _serializer.uint32(obj.tracked_objects.length, buffer, bufferOffset);
    obj.tracked_objects.forEach((val) => {
      bufferOffset = TrackedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObjects
    let len;
    let data = new TrackedObjects(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_objects]
    // Deserialize array length for message field [tracked_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracked_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracked_objects[i] = TrackedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 21 * object.tracked_objects.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_analytics_msgs/TrackedObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36a3a0ceb337855e0d695e5cebe8d607';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright (c) 2017 Intel Corporation
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    
    std_msgs/Header header              # timestamp in header is the time the sensor captured the raw data
    TrackedObject[] tracked_objects     # TrackedObject array
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: object_analytics_msgs/TrackedObject
    # Copyright (c) 2017 Intel Corporation
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    
    # This message can represent a 2D tracking object with 2D region of interest and tracking id.
    int32 id                            # object identifier
    sensor_msgs/RegionOfInterest roi    # region of interest
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackedObjects(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracked_objects !== undefined) {
      resolved.tracked_objects = new Array(msg.tracked_objects.length);
      for (let i = 0; i < resolved.tracked_objects.length; ++i) {
        resolved.tracked_objects[i] = TrackedObject.Resolve(msg.tracked_objects[i]);
      }
    }
    else {
      resolved.tracked_objects = []
    }

    return resolved;
    }
};

module.exports = TrackedObjects;
