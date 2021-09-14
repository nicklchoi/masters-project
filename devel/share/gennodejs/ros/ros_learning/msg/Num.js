// Auto-generated. Do not edit!

// (in-package ros_learning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.fsr1 = null;
      this.fsr2 = null;
      this.fsr_raw = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('fsr1')) {
        this.fsr1 = initObj.fsr1
      }
      else {
        this.fsr1 = 0;
      }
      if (initObj.hasOwnProperty('fsr2')) {
        this.fsr2 = initObj.fsr2
      }
      else {
        this.fsr2 = 0;
      }
      if (initObj.hasOwnProperty('fsr_raw')) {
        this.fsr_raw = initObj.fsr_raw
      }
      else {
        this.fsr_raw = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Num
    // Serialize message field [num]
    bufferOffset = _serializer.int64(obj.num, buffer, bufferOffset);
    // Serialize message field [fsr1]
    bufferOffset = _serializer.int32(obj.fsr1, buffer, bufferOffset);
    // Serialize message field [fsr2]
    bufferOffset = _serializer.int32(obj.fsr2, buffer, bufferOffset);
    // Serialize message field [fsr_raw]
    bufferOffset = _arraySerializer.int32(obj.fsr_raw, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Num
    let len;
    let data = new Num(null);
    // Deserialize message field [num]
    data.num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fsr1]
    data.fsr1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fsr2]
    data.fsr2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fsr_raw]
    data.fsr_raw = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fsr_raw.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_learning/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dbc71f4adf6d91823c26a117a2b6ba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num
    int32 fsr1
    int32 fsr2
    int32[] fsr_raw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Num(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.fsr1 !== undefined) {
      resolved.fsr1 = msg.fsr1;
    }
    else {
      resolved.fsr1 = 0
    }

    if (msg.fsr2 !== undefined) {
      resolved.fsr2 = msg.fsr2;
    }
    else {
      resolved.fsr2 = 0
    }

    if (msg.fsr_raw !== undefined) {
      resolved.fsr_raw = msg.fsr_raw;
    }
    else {
      resolved.fsr_raw = []
    }

    return resolved;
    }
};

module.exports = Num;
