// Auto-generated. Do not edit!

// (in-package moving_object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SocialObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.position = null;
      this.velocity = null;
      this.reliability = null;
      this.tagnames = null;
      this.tags = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('reliability')) {
        this.reliability = initObj.reliability
      }
      else {
        this.reliability = 0.0;
      }
      if (initObj.hasOwnProperty('tagnames')) {
        this.tagnames = initObj.tagnames
      }
      else {
        this.tagnames = [];
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SocialObject
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [reliability]
    bufferOffset = _serializer.float64(obj.reliability, buffer, bufferOffset);
    // Serialize message field [tagnames]
    bufferOffset = _arraySerializer.string(obj.tagnames, buffer, bufferOffset, null);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SocialObject
    let len;
    let data = new SocialObject(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [reliability]
    data.reliability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tagnames]
    data.tagnames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.tagnames.forEach((val) => {
      length += 4 + val.length;
    });
    object.tags.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'moving_object_msgs/SocialObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa604aba50f59d0fd547bd74d7c34114';
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
    
    int32               id            # Object ID
    string              name          # Object Type
    geometry_msgs/Point position      # 3D coordinates info of the center position of the object
    geometry_msgs/Point velocity      # the velocity of the object moving. Unit: m/s
    float64             reliability   # The detection probability. 
    string[]            tagnames
    string[]            tags
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SocialObject(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Point.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Point()
    }

    if (msg.reliability !== undefined) {
      resolved.reliability = msg.reliability;
    }
    else {
      resolved.reliability = 0.0
    }

    if (msg.tagnames !== undefined) {
      resolved.tagnames = msg.tagnames;
    }
    else {
      resolved.tagnames = []
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    return resolved;
    }
};

module.exports = SocialObject;
