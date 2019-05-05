package com.game.net.message.login {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 版本验证
 */
public class ResLoginVersionCheckMessage extends Message {
  /** 如果存在,则用该配置 */
  private var _config:ByteArray;
  /** 如果config为空,则根据该配置数据版本号去获取配置 */
  private var _configDataVersion:int;

  /** 如果存在,则用该配置 */
  public function set config(value:ByteArray):void {
    this._config = value;
  }

  /** 如果存在,则用该配置 */
  public function get config():ByteArray {
    return this._config;
  }

  /** 如果config为空,则根据该配置数据版本号去获取配置 */
  public function set configDataVersion(value:int):void {
    this._configDataVersion = value;
  }

  /** 如果config为空,则根据该配置数据版本号去获取配置 */
  public function get configDataVersion():int {
    return this._configDataVersion;
  }

  override public function write(_buf:ByteArray): void {
        writeBytes(_buf, this._config);
        writeInt(_buf, this._configDataVersion);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._config = readBytes(_buf);
        this._configDataVersion = readInt(_buf);
  }

  override public function getId(): int {
    return 5;
  }
}
}