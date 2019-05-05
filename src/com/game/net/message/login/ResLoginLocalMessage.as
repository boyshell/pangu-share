package com.game.net.message.login {

import com.game.net.message.login.BLoginInit;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 登录(本地)
 */
public class ResLoginLocalMessage extends Message {
  /** 初始化信息 */
  private var _init:BLoginInit;

  /** 初始化信息 */
  public function set init(value:BLoginInit):void {
    this._init = value;
  }

  /** 初始化信息 */
  public function get init():BLoginInit {
    return this._init;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._init);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._init = readBean(_buf, BLoginInit) as BLoginInit;
  }

  override public function getId(): int {
    return 2;
  }
}
}