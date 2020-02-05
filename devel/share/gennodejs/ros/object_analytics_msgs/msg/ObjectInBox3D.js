// Auto-generated. Do not edit!

// (in-package object_analytics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ObjectInBox3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roi = null;
      this.min = null;
      this.max = null;
    }
    else {
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new sensor_msgs.msg.RegionOfInterest();
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectInBox3D
    // Serialize message field [roi]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.roi, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.min, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectInBox3D
    let len;
    let data = new ObjectInBox3D(null);
    // Deserialize message field [roi]
    data.roi = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_analytics_msgs/ObjectInBox3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '507469f9787211034d588b333ec709ee';
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
    const resolved = new ObjectInBox3D(null);
    if (msg.roi !== undefined) {
      resolved.roi = sensor_msgs.msg.RegionOfInterest.Resolve(msg.roi)
    }
    else {
      resolved.roi = new sensor_msgs.msg.RegionOfInterest()
    }

    if (msg.min !== undefined) {
      resolved.min = geometry_msgs.msg.Point32.Resolve(msg.min)
    }
    else {
      resolved.min = new geometry_msgs.msg.Point32()
    }

    if (msg.max !== undefined) {
      resolved.max = geometry_msgs.msg.Point32.Resolve(msg.max)
    }
    else {
      resolved.max = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = ObjectInBox3D;
