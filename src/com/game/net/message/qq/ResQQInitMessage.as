package com.game.net.message.qq {

import com.game.net.message.qq.BQQUserList;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 初始化社交
 */
public class ResQQInitMessage extends Message {
  /** 玩家列表 */
  private var _users:Vector.<BQQUserList> = new Vector.<BQQUserList>();
  /** 申请者列表 */
  private var _applicants:Vector.<BQQUserList> = new Vector.<BQQUserList>();
  /** 已经申请的列表 */
  private var _appliedUsers:Vector.<BQQUserList> = new Vector.<BQQUserList>();

  /** 玩家列表 */
  public function set users(value:Vector.<BQQUserList>):void {
    this._users = value;
  }

  /** 玩家列表 */
  public function get users():Vector.<BQQUserList> {
    return this._users;
  }

  /** 申请者列表 */
  public function set applicants(value:Vector.<BQQUserList>):void {
    this._applicants = value;
  }

  /** 申请者列表 */
  public function get applicants():Vector.<BQQUserList> {
    return this._applicants;
  }

  /** 已经申请的列表 */
  public function set appliedUsers(value:Vector.<BQQUserList>):void {
    this._appliedUsers = value;
  }

  /** 已经申请的列表 */
  public function get appliedUsers():Vector.<BQQUserList> {
    return this._appliedUsers;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._users.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._users.length; ++i_am_tmp_i) {
        _users[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._applicants.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._applicants.length; ++i_am_tmp_i) {
        _applicants[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._appliedUsers.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._appliedUsers.length; ++i_am_tmp_i) {
        _appliedUsers[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._users = new Vector.<BQQUserList>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._users[i_am_tmp_i] = readBeanInList(_buf, BQQUserList) as BQQUserList;
    }
    size52413035 = readInt(_buf);
    this._applicants = new Vector.<BQQUserList>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._applicants[i_am_tmp_i] = readBeanInList(_buf, BQQUserList) as BQQUserList;
    }
    size52413035 = readInt(_buf);
    this._appliedUsers = new Vector.<BQQUserList>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._appliedUsers[i_am_tmp_i] = readBeanInList(_buf, BQQUserList) as BQQUserList;
    }
  }

  override public function getId(): int {
    return 437;
  }
}
}