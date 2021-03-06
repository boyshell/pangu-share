package com.game.net.message.fight {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取战报列表
 */
public class ReqFightGetListMessage extends Message {
  /** 战报类型[1:关卡][2:演武] */
  private var _type:int;
  /** 页(1开始) */
  private var _page:int;

  /** 战报类型[1:关卡][2:演武] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 战报类型[1:关卡][2:演武] */
  public function get type():int {
    return this._type;
  }

  /** 页(1开始) */
  public function set page(value:int):void {
    this._page = value;
  }

  /** 页(1开始) */
  public function get page():int {
    return this._page;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeInt(_buf, this._page);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._page = readInt(_buf);
  }

  override public function getId(): int {
    return 461;
  }
}
}