package com.game.net.message.sign {

import com.game.net.message.sign.BSign;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 签到
 */
public class ResSignMessage extends Message {
  /** 签到信息 */
  private var _sign:BSign;

  /** 签到信息 */
  public function set sign(value:BSign):void {
    this._sign = value;
  }

  /** 签到信息 */
  public function get sign():BSign {
    return this._sign;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._sign);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._sign = readBean(_buf, BSign) as BSign;
  }

  override public function getId(): int {
    return 456;
  }
}
}