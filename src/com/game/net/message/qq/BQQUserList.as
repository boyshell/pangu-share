package com.game.net.message.qq {

import com.game.net.message.qq.BQQUser;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 社交玩家列表
 */
public class BQQUserList extends Bean {
  /** 关系类型[1:好友][2:黑名单] */
  private var _relation:int;
  /** 玩家列表 */
  private var _users:Vector.<BQQUser> = new Vector.<BQQUser>();

  /** 关系类型[1:好友][2:黑名单] */
  public function set relation(value:int):void {
    this._relation = value;
  }

  /** 关系类型[1:好友][2:黑名单] */
  public function get relation():int {
    return this._relation;
  }

  /** 玩家列表 */
  public function set users(value:Vector.<BQQUser>):void {
    this._users = value;
  }

  /** 玩家列表 */
  public function get users():Vector.<BQQUser> {
    return this._users;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._relation);
    writeInt(_buf, this._users.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._users.length; ++i_am_tmp_i) {
        _users[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._relation = readInt(_buf);
    size52413035 = readInt(_buf);
    this._users = new Vector.<BQQUser>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._users[i_am_tmp_i] = readBeanInList(_buf, BQQUser) as BQQUser;
    }
  }
}
}