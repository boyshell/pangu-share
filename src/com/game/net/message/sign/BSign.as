package com.game.net.message.sign {

import com.game.net.message.item.BItem;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 签到信息
 */
public class BSign extends Bean {
  /** 是否可签到 */
  private var _avilable:Boolean;
  /** 已签到次数 */
  private var _times:int;
  /** 奖励 */
  private var _prize:Vector.<BItem> = new Vector.<BItem>();

  /** 是否可签到 */
  public function set avilable(value:Boolean):void {
    this._avilable = value;
  }

  /** 是否可签到 */
  public function get avilable():Boolean {
    return this._avilable;
  }

  /** 已签到次数 */
  public function set times(value:int):void {
    this._times = value;
  }

  /** 已签到次数 */
  public function get times():int {
    return this._times;
  }

  /** 奖励 */
  public function set prize(value:Vector.<BItem>):void {
    this._prize = value;
  }

  /** 奖励 */
  public function get prize():Vector.<BItem> {
    return this._prize;
  }

  override public function write(_buf:ByteArray): void {
        writeBoolean(_buf, this._avilable);
        writeInt(_buf, this._times);
    writeInt(_buf, this._prize.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._prize.length; ++i_am_tmp_i) {
        _prize[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._avilable = readBoolean(_buf);
        this._times = readInt(_buf);
    size52413035 = readInt(_buf);
    this._prize = new Vector.<BItem>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._prize[i_am_tmp_i] = readBeanInList(_buf, BItem) as BItem;
    }
  }
}
}