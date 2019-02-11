package com.game.net.message.login {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 登录(本地)
 */
public class ReqLoginLocalMessage extends Message {
  /** 服务器 */
  private var _server:int;
  /** 帐号 */
  private var _user:String;

  /** 服务器 */
  public function set server(value:int):void {
    this._server = value;
  }

  /** 服务器 */
  public function get server():int {
    return this._server;
  }

  /** 帐号 */
  public function set user(value:String):void {
    this._user = value;
  }

  /** 帐号 */
  public function get user():String {
    return this._user;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._server);
        writeString(_buf, this._user);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._server = readInt(_buf);
        this._user = readString(_buf);
  }

  override public function getId(): int {
    return 1;
  }
}
}