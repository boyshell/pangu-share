package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种技能选择
 */
public class ReqHeroBingZhongSkillSelectMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 兵种 */
  private var _bingZhong:int;
  /** 技能格子，0开始 */
  private var _index:int;
  /** 技能ID */
  private var _skillID:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 兵种 */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 兵种 */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  /** 技能格子，0开始 */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 技能格子，0开始 */
  public function get index():int {
    return this._index;
  }

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._bingZhong);
        writeInt(_buf, this._index);
        writeInt(_buf, this._skillID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._bingZhong = readInt(_buf);
        this._index = readInt(_buf);
        this._skillID = readInt(_buf);
  }

  override public function getId(): int {
    return 345;
  }
}
}