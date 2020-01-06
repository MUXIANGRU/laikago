// Auto-generated. Do not edit!

// (in-package laikago_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorCmd = require('./MotorCmd.js');
let LED = require('./LED.js');

//-----------------------------------------------------------

class LowCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.levelFlag = null;
      this.motorCmd = null;
      this.led = null;
      this.wirelessRemote = null;
      this.crc = null;
    }
    else {
      if (initObj.hasOwnProperty('levelFlag')) {
        this.levelFlag = initObj.levelFlag
      }
      else {
        this.levelFlag = 0;
      }
      if (initObj.hasOwnProperty('motorCmd')) {
        this.motorCmd = initObj.motorCmd
      }
      else {
        this.motorCmd = new Array(20).fill(new MotorCmd());
      }
      if (initObj.hasOwnProperty('led')) {
        this.led = initObj.led
      }
      else {
        this.led = new Array(4).fill(new LED());
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LowCmd
    // Serialize message field [levelFlag]
    bufferOffset = _serializer.uint8(obj.levelFlag, buffer, bufferOffset);
    // Check that the constant length array field [motorCmd] has the right length
    if (obj.motorCmd.length !== 20) {
      throw new Error('Unable to serialize array field motorCmd - length must be 20')
    }
    // Serialize message field [motorCmd]
    obj.motorCmd.forEach((val) => {
      bufferOffset = MotorCmd.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [led] has the right length
    if (obj.led.length !== 4) {
      throw new Error('Unable to serialize array field led - length must be 4')
    }
    // Serialize message field [led]
    obj.led.forEach((val) => {
      bufferOffset = LED.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [wirelessRemote] has the right length
    if (obj.wirelessRemote.length !== 40) {
      throw new Error('Unable to serialize array field wirelessRemote - length must be 40')
    }
    // Serialize message field [wirelessRemote]
    bufferOffset = _arraySerializer.uint8(obj.wirelessRemote, buffer, bufferOffset, 40);
    // Serialize message field [crc]
    bufferOffset = _serializer.uint32(obj.crc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LowCmd
    let len;
    let data = new LowCmd(null);
    // Deserialize message field [levelFlag]
    data.levelFlag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motorCmd]
    len = 20;
    data.motorCmd = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorCmd[i] = MotorCmd.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [led]
    len = 4;
    data.led = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.led[i] = LED.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wirelessRemote]
    data.wirelessRemote = _arrayDeserializer.uint8(buffer, bufferOffset, 40)
    // Deserialize message field [crc]
    data.crc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laikago_msgs/LowCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07bb727e47213ef7a2c819ad6a8669b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 levelFlag
    MotorCmd[20] motorCmd
    LED[4] led
    uint8[40] wirelessRemote
    uint32 crc                # check bit
    ================================================================================
    MSG: laikago_msgs/MotorCmd
    uint8 mode                  # motor target mode
    float32 position           # motor target position
    float32 velocity           # motor target velocity
    float32 positionStiffness  # motor spring stiffness coefficient
    float32 velocityStiffness  # motor damper coefficient
    float32 torque             # motor target torque
    ================================================================================
    MSG: laikago_msgs/LED
    uint8 r
    uint8 g
    uint8 b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LowCmd(null);
    if (msg.levelFlag !== undefined) {
      resolved.levelFlag = msg.levelFlag;
    }
    else {
      resolved.levelFlag = 0
    }

    if (msg.motorCmd !== undefined) {
      resolved.motorCmd = new Array(20)
      for (let i = 0; i < resolved.motorCmd.length; ++i) {
        if (msg.motorCmd.length > i) {
          resolved.motorCmd[i] = MotorCmd.Resolve(msg.motorCmd[i]);
        }
        else {
          resolved.motorCmd[i] = new MotorCmd();
        }
      }
    }
    else {
      resolved.motorCmd = new Array(20).fill(new MotorCmd())
    }

    if (msg.led !== undefined) {
      resolved.led = new Array(4)
      for (let i = 0; i < resolved.led.length; ++i) {
        if (msg.led.length > i) {
          resolved.led[i] = LED.Resolve(msg.led[i]);
        }
        else {
          resolved.led[i] = new LED();
        }
      }
    }
    else {
      resolved.led = new Array(4).fill(new LED())
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

    return resolved;
    }
};

module.exports = LowCmd;
