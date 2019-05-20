package com.game.net.message.qq {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 申请社交关系
 */
public class ReqQQApplyMessage extends Message {
  /** 玩家唯一ID */
  private var _uid:long;
  /** 关系类型[1:好友][2:黑名单] */
  private var _relation:int;

  /** 玩家唯一ID */
  public function set uid(value:long):void {
    this._uid = value;
  }

  /** 玩家唯一ID */
  public function get uid():long {
    return this._uid;
  }

  /** 关系类型[1:好友][2:黑名单] */
  public function set relation(value:int):void {
    this._relation = value;
  }

  /** 关系类型[1:好友][2:黑名单] */
  public function get relation():int {
    return this._relation;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._uid);
        writeInt(_buf, this._relation);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readLong(_buf);
        this._relation = readInt(_buf);
  }

  override public function getId(): int {
    return 432;
  }
}
}