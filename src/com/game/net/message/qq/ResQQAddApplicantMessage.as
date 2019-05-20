package com.game.net.message.qq {

import com.game.net.message.qq.BQQUser;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加社交关系(申请者)
 */
public class ResQQAddApplicantMessage extends Message {
  /** 玩家 */
  private var _user:BQQUser;
  /** 关系类型[1:好友][2:黑名单] */
  private var _relation:int;

  /** 玩家 */
  public function set user(value:BQQUser):void {
    this._user = value;
  }

  /** 玩家 */
  public function get user():BQQUser {
    return this._user;
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
        writeBean(_buf, this._user);
        writeInt(_buf, this._relation);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._user = readBean(_buf, BQQUser) as BQQUser;
        this._relation = readInt(_buf);
  }

  override public function getId(): int {
    return 436;
  }
}
}