package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingHouse;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募
 */
public class BGambling extends Bean {
  /** 卡包列表 */
  private var _houses:Vector.<BGamblingHouse> = new Vector.<BGamblingHouse>();

  /** 卡包列表 */
  public function set houses(value:Vector.<BGamblingHouse>):void {
    this._houses = value;
  }

  /** 卡包列表 */
  public function get houses():Vector.<BGamblingHouse> {
    return this._houses;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._houses.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._houses.length; ++i_am_tmp_i) {
        _houses[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._houses = new Vector.<BGamblingHouse>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._houses[i_am_tmp_i] = readBeanInList(_buf, BGamblingHouse) as BGamblingHouse;
    }
  }
}
}