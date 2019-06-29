package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingHouse;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加卡包
 */
public class ResGamblingHouseAddMessage extends Message {
  /** 卡包 */
  private var _house:BGamblingHouse;

  /** 卡包 */
  public function set house(value:BGamblingHouse):void {
    this._house = value;
  }

  /** 卡包 */
  public function get house():BGamblingHouse {
    return this._house;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._house);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._house = readBean(_buf, BGamblingHouse) as BGamblingHouse;
  }

  override public function getId(): int {
    return 451;
  }
}
}