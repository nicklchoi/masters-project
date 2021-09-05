// Auto-generated. Do not edit!

// (in-package my_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CountUntilGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_number = null;
      this.wait_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('max_number')) {
        this.max_number = initObj.max_number
      }
      else {
        this.max_number = 0;
      }
      if (initObj.hasOwnProperty('wait_duration')) {
        this.wait_duration = initObj.wait_duration
      }
      else {
        this.wait_duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CountUntilGoal
    // Serialize message field [max_number]
    bufferOffset = _serializer.int64(obj.max_number, buffer, bufferOffset);
    // Serialize message field [wait_duration]
    bufferOffset = _serializer.float64(obj.wait_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CountUntilGoal
    let len;
    let data = new CountUntilGoal(null);
    // Deserialize message field [max_number]
    data.max_number = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [wait_duration]
    data.wait_duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_msgs/CountUntilGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca8c86ed62b42e478aaac2e19c943016';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal 
    int64 max_number
    float64 wait_duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CountUntilGoal(null);
    if (msg.max_number !== undefined) {
      resolved.max_number = msg.max_number;
    }
    else {
      resolved.max_number = 0
    }

    if (msg.wait_duration !== undefined) {
      resolved.wait_duration = msg.wait_duration;
    }
    else {
      resolved.wait_duration = 0.0
    }

    return resolved;
    }
};

module.exports = CountUntilGoal;
