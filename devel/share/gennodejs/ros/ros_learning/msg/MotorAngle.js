// Auto-generated. Do not edit!

// (in-package ros_learning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MotorAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motor1 = null;
      this.motor2 = null;
      this.motor3 = null;
      this.motor4 = null;
      this.motor5 = null;
      this.motor6 = null;
      this.motor7 = null;
      this.motor8 = null;
      this.motor9 = null;
      this.motor10 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = 0;
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = 0;
      }
      if (initObj.hasOwnProperty('motor3')) {
        this.motor3 = initObj.motor3
      }
      else {
        this.motor3 = 0;
      }
      if (initObj.hasOwnProperty('motor4')) {
        this.motor4 = initObj.motor4
      }
      else {
        this.motor4 = 0;
      }
      if (initObj.hasOwnProperty('motor5')) {
        this.motor5 = initObj.motor5
      }
      else {
        this.motor5 = 0;
      }
      if (initObj.hasOwnProperty('motor6')) {
        this.motor6 = initObj.motor6
      }
      else {
        this.motor6 = 0;
      }
      if (initObj.hasOwnProperty('motor7')) {
        this.motor7 = initObj.motor7
      }
      else {
        this.motor7 = 0;
      }
      if (initObj.hasOwnProperty('motor8')) {
        this.motor8 = initObj.motor8
      }
      else {
        this.motor8 = 0;
      }
      if (initObj.hasOwnProperty('motor9')) {
        this.motor9 = initObj.motor9
      }
      else {
        this.motor9 = 0;
      }
      if (initObj.hasOwnProperty('motor10')) {
        this.motor10 = initObj.motor10
      }
      else {
        this.motor10 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorAngle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motor1]
    bufferOffset = _serializer.int32(obj.motor1, buffer, bufferOffset);
    // Serialize message field [motor2]
    bufferOffset = _serializer.int32(obj.motor2, buffer, bufferOffset);
    // Serialize message field [motor3]
    bufferOffset = _serializer.int32(obj.motor3, buffer, bufferOffset);
    // Serialize message field [motor4]
    bufferOffset = _serializer.int32(obj.motor4, buffer, bufferOffset);
    // Serialize message field [motor5]
    bufferOffset = _serializer.int32(obj.motor5, buffer, bufferOffset);
    // Serialize message field [motor6]
    bufferOffset = _serializer.int32(obj.motor6, buffer, bufferOffset);
    // Serialize message field [motor7]
    bufferOffset = _serializer.int32(obj.motor7, buffer, bufferOffset);
    // Serialize message field [motor8]
    bufferOffset = _serializer.int32(obj.motor8, buffer, bufferOffset);
    // Serialize message field [motor9]
    bufferOffset = _serializer.int32(obj.motor9, buffer, bufferOffset);
    // Serialize message field [motor10]
    bufferOffset = _serializer.int32(obj.motor10, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorAngle
    let len;
    let data = new MotorAngle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor1]
    data.motor1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor2]
    data.motor2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor3]
    data.motor3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor4]
    data.motor4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor5]
    data.motor5 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor6]
    data.motor6 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor7]
    data.motor7 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor8]
    data.motor8 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor9]
    data.motor9 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor10]
    data.motor10 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_learning/MotorAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f54c2c7b5eddb6d8e74ec2c7e3892930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int32 motor1
    int32 motor2
    int32 motor3
    int32 motor4
    int32 motor5
    int32 motor6
    int32 motor7
    int32 motor8
    int32 motor9
    int32 motor10
    
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorAngle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motor1 !== undefined) {
      resolved.motor1 = msg.motor1;
    }
    else {
      resolved.motor1 = 0
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = msg.motor2;
    }
    else {
      resolved.motor2 = 0
    }

    if (msg.motor3 !== undefined) {
      resolved.motor3 = msg.motor3;
    }
    else {
      resolved.motor3 = 0
    }

    if (msg.motor4 !== undefined) {
      resolved.motor4 = msg.motor4;
    }
    else {
      resolved.motor4 = 0
    }

    if (msg.motor5 !== undefined) {
      resolved.motor5 = msg.motor5;
    }
    else {
      resolved.motor5 = 0
    }

    if (msg.motor6 !== undefined) {
      resolved.motor6 = msg.motor6;
    }
    else {
      resolved.motor6 = 0
    }

    if (msg.motor7 !== undefined) {
      resolved.motor7 = msg.motor7;
    }
    else {
      resolved.motor7 = 0
    }

    if (msg.motor8 !== undefined) {
      resolved.motor8 = msg.motor8;
    }
    else {
      resolved.motor8 = 0
    }

    if (msg.motor9 !== undefined) {
      resolved.motor9 = msg.motor9;
    }
    else {
      resolved.motor9 = 0
    }

    if (msg.motor10 !== undefined) {
      resolved.motor10 = msg.motor10;
    }
    else {
      resolved.motor10 = 0
    }

    return resolved;
    }
};

module.exports = MotorAngle;
