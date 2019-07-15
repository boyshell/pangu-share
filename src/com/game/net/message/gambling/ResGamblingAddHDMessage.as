package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingHD;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加/更新卡包
 */
public class ResGamblingAddHDMessage extends Message {
  /** 卡包 */
  private var _house:BGamblingHD;

  /** 卡包 */
  public function set house(value:BGamblingHD):void {
    this._house = value;
  }

  /** 卡包 */
  public function get house():BGamblingHD {
    return this._house;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._house);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._house = readBean(_buf, BGamblingHD) as BGamblingHD;
  }

  override public function getId(): int {
    return 480;
  }
}
}