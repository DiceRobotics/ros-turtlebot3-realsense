// Auto-generated. Do not edit!

// (in-package object_map.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.probability = null;
      this.min_point = null;
      this.max_point = null;
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
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('min_point')) {
        this.min_point = initObj.min_point
      }
      else {
        this.min_point = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('max_point')) {
        this.max_point = initObj.max_point
      }
      else {
        this.max_point = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float32(obj.probability, buffer, bufferOffset);
    // Serialize message field [min_point]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.min_point, buffer, bufferOffset);
    // Serialize message field [max_point]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.max_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_point]
    data.min_point = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_point]
    data.max_point = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_map/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12ac37f35f272c1d2e0084c1be4dcb44';
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
    uint32 id
    string name
    float32 probability 
    geometry_msgs/Point32 min_point
    geometry_msgs/Point32 max_point
    
    
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
    const resolved = new Object(null);
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

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.min_point !== undefined) {
      resolved.min_point = geometry_msgs.msg.Point32.Resolve(msg.min_point)
    }
    else {
      resolved.min_point = new geometry_msgs.msg.Point32()
    }

    if (msg.max_point !== undefined) {
      resolved.max_point = geometry_msgs.msg.Point32.Resolve(msg.max_point)
    }
    else {
      resolved.max_point = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = Object;
