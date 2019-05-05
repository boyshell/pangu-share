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
  /** 是否加tab */
  private var _tab:Boolean;
  /** 被添加的武将卡唯一ID */
  private var _dstHeroUID:int;
  /** BUFF */
  private var _buffID:int;
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

  /** 是否加tab */
  public function set tab(value:Boolean):void {
    this._tab = value;
  }

  /** 是否加tab */
  public function get tab():Boolean {
    return this._tab;
  }

  /** 被添加的武将卡唯一ID */
  public function set dstHeroUID(value:int):void {
    this._dstHeroUID = value;
  }

  /** 被添加的武将卡唯一ID */
  public function get dstHeroUID():int {
    return this._dstHeroUID;
  }

  /** BUFF */
  public function set buffID(value:int):void {
    this._buffID = value;
  }

  /** BUFF */
  public function get buffID():int {
    return this._buffID;
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
        writeBoolean(_buf, this._tab);
        writeInt(_buf, this._dstHeroUID);
        writeInt(_buf, this._buffID);
        writeInt(_buf, this._error);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
        this._tab = readBoolean(_buf);
        this._dstHeroUID = readInt(_buf);
        this._buffID = readInt(_buf);
        this._error = readInt(_buf);
  }
}
}