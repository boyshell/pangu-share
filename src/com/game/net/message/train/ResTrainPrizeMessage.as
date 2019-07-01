package com.game.net.message.train {

import com.game.net.message.item.BItem;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武奖励
 */
public class ResTrainPrizeMessage extends Message {
  /** 奖品 */
  private var _items:Vector.<BItem> = new Vector.<BItem>();
  /** 奖励倍率 */
  private var _times:int;

  /** 奖品 */
  public function set items(value:Vector.<BItem>):void {
    this._items = value;
  }

  /** 奖品 */
  public function get items():Vector.<BItem> {
    return this._items;
  }

  /** 奖励倍率 */
  public function set times(value:int):void {
    this._times = value;
  }

  /** 奖励倍率 */
  public function get times():int {
    return this._times;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._items.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._items.length; ++i_am_tmp_i) {
        _items[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._times);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._items = new Vector.<BItem>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._items[i_am_tmp_i] = readBeanInList(_buf, BItem) as BItem;
    }
        this._times = readInt(_buf);
  }

  override public function getId(): int {
    return 470;
  }
}
}