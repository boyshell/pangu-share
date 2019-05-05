package com.game.net.message.hero {

import com.game.net.message.util.BAttribute;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将配点
 */
public class ResHeroPeiDianMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 配点 */
  private var _peiDian:Vector.<BAttribute> = new Vector.<BAttribute>();

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 配点 */
  public function set peiDian(value:Vector.<BAttribute>):void {
    this._peiDian = value;
  }

  /** 配点 */
  public function get peiDian():Vector.<BAttribute> {
    return this._peiDian;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
    writeInt(_buf, this._peiDian.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._peiDian.length; ++i_am_tmp_i) {
        _peiDian[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
    size52413035 = readInt(_buf);
    this._peiDian = new Vector.<BAttribute>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._peiDian[i_am_tmp_i] = readBeanInList(_buf, BAttribute) as BAttribute;
    }
  }

  override public function getId(): int {
    return 321;
  }
}
}