package com.game.net.message.fight {

import com.game.net.message.fight.BFightBrief;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取战报列表
 */
public class ResFightGetListMessage extends Message {
  /** 战报类型[1:关卡][2:演武] */
  private var _type:int;
  /** 战报列表 */
  private var _list:Vector.<BFightBrief> = new Vector.<BFightBrief>();

  /** 战报类型[1:关卡][2:演武] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function get type():int {
    return this._type;
  }

  /** 战报列表 */
  public function set list(value:Vector.<BFightBrief>):void {
    this._list = value;
  }

  /** 战报列表 */
  public function get list():Vector.<BFightBrief> {
    return this._list;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
    writeInt(_buf, this._list.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._list.length; ++i_am_tmp_i) {
        _list[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
    size52413035 = readInt(_buf);
    this._list = new Vector.<BFightBrief>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._list[i_am_tmp_i] = readBeanInList(_buf, BFightBrief) as BFightBrief;
    }
  }

  override public function getId(): int {
    return 462;
  }
}
}