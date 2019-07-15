package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingMJ;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加/更新卡包
 */
public class ResGamblingAddMJMessage extends Message {
  /** 卡包 */
  private var _house:BGamblingMJ;

  /** 卡包 */
  public function set house(value:BGamblingMJ):void {
    this._house = value;
  }

  /** 卡包 */
  public function get house():BGamblingMJ {
    return this._house;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._house);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._house = readBean(_buf, BGamblingMJ) as BGamblingMJ;
  }

  override public function getId(): int {
    return 481;
  }
}
}