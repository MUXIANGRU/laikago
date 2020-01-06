// Auto-generated. Do not edit!

// (in-package laikago_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IMU = require('./IMU.js');
let MotorState = require('./MotorState.js');
let Cartesian = require('./Cartesian.js');

//-----------------------------------------------------------

class LowState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.levelFlag = null;
      this.imu = null;
      this.motorState = null;
      this.footForce = null;
      this.tick = null;
      this.wirelessRemote = null;
      this.crc = null;
      this.eeForce = null;
    }
    else {
      if (initObj.hasOwnProperty('levelFlag')) {
        this.levelFlag = initObj.levelFlag
      }
      else {
        this.levelFlag = 0;
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new IMU();
      }
      if (initObj.hasOwnProperty('motorState')) {
        this.motorState = initObj.motorState
      }
      else {
        this.motorState = new Array(20).fill(new MotorState());
      }
      if (initObj.hasOwnProperty('footForce')) {
        this.footForce = initObj.footForce
      }
      else {
        this.footForce = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('tick')) {
        this.tick = initObj.tick
      }
      else {
        this.tick = 0;
      }
      if (initObj.hasOwnProperty('wirelessRemote')) {
        this.wirelessRemote = initObj.wirelessRemote
      }
      else {
        this.wirelessRemote = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0;
      }
      if (initObj.hasOwnProperty('eeForce')) {
        this.eeForce = initObj.eeForce
      }
      else {
        this.eeForce = new Array(4).fill(new Cartesian());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LowState
    // Serialize message field [levelFlag]
    bufferOffset = _serializer.uint8(obj.levelFlag, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = IMU.serialize(obj.imu, buffer, bufferOffset);
    // Check that the constant length array field [motorState] has the right length
    if (obj.motorState.length !== 20) {
      throw new Error('Unable to serialize array field motorState - length must be 20')
    }
    // Serialize message field [motorState]
    obj.motorState.forEach((val) => {
      bufferOffset = MotorState.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [footForce] has the right length
    if (obj.footForce.length !== 4) {
      throw new Error('Unable to serialize array field footForce - length must be 4')
    }
    // Serialize message field [footForce]
    bufferOffset = _arraySerializer.float32(obj.footForce, buffer, bufferOffset, 4);
    // Serialize message field [tick]
    bufferOffset = _serializer.uint32(obj.tick, buffer, bufferOffset);
    // Check that the constant length array field [wirelessRemote] has the right length
    if (obj.wirelessRemote.length !== 40) {
      throw new Error('Unable to serialize array field wirelessRemote - length must be 40')
    }
    // Serialize message field [wirelessRemote]
    bufferOffset = _arraySerializer.uint8(obj.wirelessRemote, buffer, bufferOffset, 40);
    // Serialize message field [crc]
    bufferOffset = _serializer.uint32(obj.crc, buffer, bufferOffset);
    // Check that the constant length array field [eeForce] has the right length
    if (obj.eeForce.length !== 4) {
      throw new Error('Unable to serialize array field eeForce - length must be 4')
    }
    // Serialize message field [eeForce]
    obj.eeForce.forEach((val) => {
      bufferOffset = Cartesian.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LowState
    let len;
    let data = new LowState(null);
    // Deserialize message field [levelFlag]
    data.levelFlag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = IMU.deserialize(buffer, bufferOffset);
    // Deserialize message field [motorState]
    len = 20;
    data.motorState = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorState[i] = MotorState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [footForce]
    data.footForce = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [tick]
    data.tick = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wirelessRemote]
    data.wirelessRemote = _arrayDeserializer.uint8(buffer, bufferOffset, 40)
    // Deserialize message field [crc]
    data.crc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [eeForce]
    len = 4;
    data.eeForce = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.eeForce[i] = Cartesian.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 158;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laikago_msgs/LowState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff497aa2c0f42e68227aaf7b1f8c13c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 levelFlag
    IMU imu
    MotorState[20] motorState
    float32[4] footForce
    uint32 tick                   # time reference
    uint8[40] wirelessRemote      # wireless command
    uint32 crc                    # check bit
    Cartesian[4] eeForce          #it's a 1-DOF force infact, but we use 3-DOF here just for visualization 
    ================================================================================
    MSG: laikago_msgs/IMU
    float32[4] quaternion
    float32[3] gyroscope
    float32[3] acceleration
    float32[3] rpy
    float32 temp
    ================================================================================
    MSG: laikago_msgs/MotorState
    uint8 mode            # motor current mode 
    float32 position     # motor current position（rad）
    float32 velocity     # motor current speed（rad/s）
    float32 torque       # current estimated output torque（N*m）
    float32 temperature  # motor temperature（slow conduction of temperature leads to lag）
    int32 iReserve
    float32 fReserve
    ================================================================================
    MSG: laikago_msgs/Cartesian
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
    const resolved = new LowState(null);
    if (msg.levelFlag !== undefined) {
      resolved.levelFlag = msg.levelFlag;
    }
    else {
      resolved.levelFlag = 0
    }

    if (msg.imu !== undefined) {
      resolved.imu = IMU.Resolve(msg.imu)
    }
    else {
      resolved.imu = new IMU()
    }

    if (msg.motorState !== undefined) {
      resolved.motorState = new Array(20)
      for (let i = 0; i < resolved.motorState.length; ++i) {
        if (msg.motorState.length > i) {
          resolved.motorState[i] = MotorState.Resolve(msg.motorState[i]);
        }
        else {
          resolved.motorState[i] = new MotorState();
        }
      }
    }
    else {
      resolved.motorState = new Array(20).fill(new MotorState())
    }

    if (msg.footForce !== undefined) {
      resolved.footForce = msg.footForce;
    }
    else {
      resolved.footForce = new Array(4).fill(0)
    }

    if (msg.tick !== undefined) {
      resolved.tick = msg.tick;
    }
    else {
      resolved.tick = 0
    }

    if (msg.wirelessRemote !== undefined) {
      resolved.wirelessRemote = msg.wirelessRemote;
    }
    else {
      resolved.wirelessRemote = new Array(40).fill(0)
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0
    }

    if (msg.eeForce !== undefined) {
      resolved.eeForce = new Array(4)
      for (let i = 0; i < resolved.eeForce.length; ++i) {
        if (msg.eeForce.length > i) {
          resolved.eeForce[i] = Cartesian.Resolve(msg.eeForce[i]);
        }
        else {
          resolved.eeForce[i] = new Cartesian();
        }
      }
    }
    else {
      resolved.eeForce = new Array(4).fill(new Cartesian())
    }

    return resolved;
    }
};

module.exports = LowState;
