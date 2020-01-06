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

class MotorCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.position = null;
      this.velocity = null;
      this.positionStiffness = null;
      this.velocityStiffness = null;
      this.torque = null;
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
      if (initObj.hasOwnProperty('positionStiffness')) {
        this.positionStiffness = initObj.positionStiffness
      }
      else {
        this.positionStiffness = 0.0;
      }
      if (initObj.hasOwnProperty('velocityStiffness')) {
        this.velocityStiffness = initObj.velocityStiffness
      }
      else {
        this.velocityStiffness = 0.0;
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCmd
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [positionStiffness]
    bufferOffset = _serializer.float32(obj.positionStiffness, buffer, bufferOffset);
    // Serialize message field [velocityStiffness]
    bufferOffset = _serializer.float32(obj.velocityStiffness, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = _serializer.float32(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCmd
    let len;
    let data = new MotorCmd(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [positionStiffness]
    data.positionStiffness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocityStiffness]
    data.velocityStiffness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laikago_msgs/MotorCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bbe425e3cd73a40e74b88b2f03b321c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode                  # motor target mode
    float32 position           # motor target position
    float32 velocity           # motor target velocity
    float32 positionStiffness  # motor spring stiffness coefficient
    float32 velocityStiffness  # motor damper coefficient
    float32 torque             # motor target torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCmd(null);
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

    if (msg.positionStiffness !== undefined) {
      resolved.positionStiffness = msg.positionStiffness;
    }
    else {
      resolved.positionStiffness = 0.0
    }

    if (msg.velocityStiffness !== undefined) {
      resolved.velocityStiffness = msg.velocityStiffness;
    }
    else {
      resolved.velocityStiffness = 0.0
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = 0.0
    }

    return resolved;
    }
};

module.exports = MotorCmd;
