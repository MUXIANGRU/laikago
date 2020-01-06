// Auto-generated. Do not edit!

// (in-package laikago_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.position = null;
      this.velocity = null;
      this.torque = null;
      this.temperature = null;
      this.iReserve = null;
      this.fReserve = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('iReserve')) {
        this.iReserve = initObj.iReserve
      }
      else {
        this.iReserve = 0;
      }
      if (initObj.hasOwnProperty('fReserve')) {
        this.fReserve = initObj.fReserve
      }
      else {
        this.fReserve = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = _serializer.float32(obj.torque, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [iReserve]
    bufferOffset = _serializer.int32(obj.iReserve, buffer, bufferOffset);
    // Serialize message field [fReserve]
    bufferOffset = _serializer.float32(obj.fReserve, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iReserve]
    data.iReserve = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fReserve]
    data.fReserve = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laikago_msgs/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45138c3d7a603ce307daeb241ea2207a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode            # motor current mode 
    float32 position     # motor current position（rad）
    float32 velocity     # motor current speed（rad/s）
    float32 torque       # current estimated output torque（N*m）
    float32 temperature  # motor temperature（slow conduction of temperature leads to lag）
    int32 iReserve
    float32 fReserve
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.iReserve !== undefined) {
      resolved.iReserve = msg.iReserve;
    }
    else {
      resolved.iReserve = 0
    }

    if (msg.fReserve !== undefined) {
      resolved.fReserve = msg.fReserve;
    }
    else {
      resolved.fReserve = 0.0
    }

    return resolved;
    }
};

module.exports = MotorState;
