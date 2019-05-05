package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将等级or经验变更
 */
public class ResHeroLevelUpdateMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 等级 */
  private var _level:int;
  /** 经验 */
  private var _exp:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 等级 */
  public function get level():int {
    return this._level;
  }

  /** 经验 */
  public function set exp(value:int):void {
    this._exp = value;
  }

  /** 经验 */
  public function get exp():int {
    return this._exp;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._level);
        writeInt(_buf, this._exp);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._level = readInt(_buf);
        this._exp = readInt(_buf);
  }

  override public function getId(): int {
    return 377;
  }
}
}