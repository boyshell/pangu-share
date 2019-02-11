package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 拆解技能
 */
public class ReqHeroChaiJieMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
  }

  override public function getId(): int {
    return 289;
  }
}
}