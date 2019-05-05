package com.game.net.message.login {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 版本验证
 */
public class ReqLoginVersionCheckMessage extends Message {
  /** 消息代码版本号 */
  private var _messageCodeVersion:String;
  /** 配置代码版本号 */
  private var _configCodeVersion:String;

  /** 消息代码版本号 */
  public function set messageCodeVersion(value:String):void {
    this._messageCodeVersion = value;
  }

  /** 消息代码版本号 */
  public function get messageCodeVersion():String {
    return this._messageCodeVersion;
  }

  /** 配置代码版本号 */
  public function set configCodeVersion(value:String):void {
    this._configCodeVersion = value;
  }

  /** 配置代码版本号 */
  public function get configCodeVersion():String {
    return this._configCodeVersion;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._messageCodeVersion);
        writeString(_buf, this._configCodeVersion);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._messageCodeVersion = readString(_buf);
        this._configCodeVersion = readString(_buf);
  }

  override public function getId(): int {
    return 4;
  }
}
}