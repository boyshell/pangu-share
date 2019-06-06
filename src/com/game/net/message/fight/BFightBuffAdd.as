package com.game.net.message.fight {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * BUFF添加
 */
public class BFightBuffAdd extends Bean {
  /** 序号(回合*1000000)+顺序ID */
  private var _index:int;
  /** 被添加的武将卡唯一ID */
  private var _dstHeroUID:int;
  /** BUFF类型 */
  private var _buffType:int;
  /** 错误码[1:同等或更强][2:处于洞察状态] */
  private var _error:int;

  /** 序号(回合*1000000)+顺序ID */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 序号(回合*1000000)+顺序ID */
  public function get index():int {
    return this._index;
  }

  /** 被添加的武将卡唯一ID */
  public function set dstHeroUID(value:int):void {
    this._dstHeroUID = value;
  }

  /** 被添加的武将卡唯一ID */
  public function get dstHeroUID():int {
    return this._dstHeroUID;
  }

  /** BUFF类型 */
  public function set buffType(value:int):void {
    this._buffType = value;
  }

  /** BUFF类型 */
  public function get buffType():int {
    return this._buffType;
  }

  /** 错误码[1:同等或更强][2:处于洞察状态] */
  public function set error(value:int):void {
    this._error = value;
  }

  /** 错误码[1:同等或更强][2:处于洞察状态] */
  public function get error():int {
    return this._error;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
        writeInt(_buf, this._dstHeroUID);
        writeInt(_buf, this._buffType);
        writeInt(_buf, this._error);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
        this._dstHeroUID = readInt(_buf);
        this._buffType = readInt(_buf);
        this._error = readInt(_buf);
  }
}
}