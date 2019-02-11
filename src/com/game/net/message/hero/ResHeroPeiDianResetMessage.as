package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 重置武将配点
 */
public class ResHeroPeiDianResetMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 下次可免费重置配点时间 */
  private var _freePeiDianResetTime:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 下次可免费重置配点时间 */
  public function set freePeiDianResetTime(value:int):void {
    this._freePeiDianResetTime = value;
  }

  /** 下次可免费重置配点时间 */
  public function get freePeiDianResetTime():int {
    return this._freePeiDianResetTime;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._freePeiDianResetTime);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._freePeiDianResetTime = readInt(_buf);
  }

  override public function getId(): int {
    return 312;
  }
}
}