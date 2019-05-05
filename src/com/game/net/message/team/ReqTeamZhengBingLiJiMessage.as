package com.game.net.message.team {

import com.game.net.message.team.BTeamZhengBing;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵(立即)
 */
public class ReqTeamZhengBingLiJiMessage extends Message {
  /** 征兵信息 */
  private var _zhengBing:Vector.<BTeamZhengBing> = new Vector.<BTeamZhengBing>();

  /** 征兵信息 */
  public function set zhengBing(value:Vector.<BTeamZhengBing>):void {
    this._zhengBing = value;
  }

  /** 征兵信息 */
  public function get zhengBing():Vector.<BTeamZhengBing> {
    return this._zhengBing;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._zhengBing.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._zhengBing.length; ++i_am_tmp_i) {
        _zhengBing[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._zhengBing = new Vector.<BTeamZhengBing>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._zhengBing[i_am_tmp_i] = readBeanInList(_buf, BTeamZhengBing) as BTeamZhengBing;
    }
  }

  override public function getId(): int {
    return 324;
  }
}
}