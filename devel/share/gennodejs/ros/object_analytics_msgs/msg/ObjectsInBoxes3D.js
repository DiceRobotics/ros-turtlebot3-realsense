// Auto-generated. Do not edit!

// (in-package object_analytics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectInBox3D = require('./ObjectInBox3D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectsInBoxes3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects_in_boxes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects_in_boxes')) {
        this.objects_in_boxes = initObj.objects_in_boxes
      }
      else {
        this.objects_in_boxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectsInBoxes3D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects_in_boxes]
    // Serialize the length for message field [objects_in_boxes]
    bufferOffset = _serializer.uint32(obj.objects_in_boxes.length, buffer, bufferOffset);
    obj.objects_in_boxes.forEach((val) => {
      bufferOffset = ObjectInBox3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsInBoxes3D
    let len;
    let data = new ObjectsInBoxes3D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects_in_boxes]
    // Deserialize array length for message field [objects_in_boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects_in_boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects_in_boxes[i] = ObjectInBox3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 41 * object.objects_in_boxes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_analytics_msgs/ObjectsInBoxes3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c0963ec04b8a73778b7dfa2abfbc0cf';
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
    
    std_msgs/Header header            # timestamp in header is the time the sensor captured the raw data
    ObjectInBox3D[] objects_in_boxes  # ObjectInBox3D array
    
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
    MSG: object_analytics_msgs/ObjectInBox3D
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
    
    # This message can represent a 3D detection object with 2D region of interest and 3D information (min & max)
    sensor_msgs/RegionOfInterest roi      # region of interest
    geometry_msgs/Point32 min             # min and max locate the diagonal of a bounding-box of the detected object whose
    geometry_msgs/Point32 max             # x, y and z axis parellel to the axises correspondingly in camera coordinates
    
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
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectsInBoxes3D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects_in_boxes !== undefined) {
      resolved.objects_in_boxes = new Array(msg.objects_in_boxes.length);
      for (let i = 0; i < resolved.objects_in_boxes.length; ++i) {
        resolved.objects_in_boxes[i] = ObjectInBox3D.Resolve(msg.objects_in_boxes[i]);
      }
    }
    else {
      resolved.objects_in_boxes = []
    }

    return resolved;
    }
};

module.exports = ObjectsInBoxes3D;
