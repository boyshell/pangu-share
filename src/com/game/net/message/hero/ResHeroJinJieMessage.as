package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将进阶
 */
public class ResHeroJinJieMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 星 */
  private var _star:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 星 */
  public function set star(value:int):void {
    this._star = value;
  }

  /** 星 */
  public function get star():int {
    return this._star;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._star);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._star = readInt(_buf);
  }

  override public function getId(): int {
    return 303;
  }
}
}