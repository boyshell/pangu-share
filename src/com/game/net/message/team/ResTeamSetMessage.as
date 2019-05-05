package com.game.net.message.team {

import com.game.net.message.team.BTeam;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍设置
 */
public class ResTeamSetMessage extends Message {
  /** 变更的队伍 */
  private var _teams:Vector.<BTeam> = new Vector.<BTeam>();

  /** 变更的队伍 */
  public function set teams(value:Vector.<BTeam>):void {
    this._teams = value;
  }

  /** 变更的队伍 */
  public function get teams():Vector.<BTeam> {
    return this._teams;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._teams.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._teams.length; ++i_am_tmp_i) {
        _teams[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._teams = new Vector.<BTeam>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._teams[i_am_tmp_i] = readBeanInList(_buf, BTeam) as BTeam;
    }
  }

  override public function getId(): int {
    return 328;
  }
}
}