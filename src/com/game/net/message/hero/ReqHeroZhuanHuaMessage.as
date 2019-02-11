package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将转化
 */
public class ReqHeroZhuanHuaMessage extends Message {
  /** 是否双倍转化 */
  private var _doubleZhuanHua:Boolean;
  /** 武将唯一ID */
  private var _heroUIDs:Vector.<int> = new Vector.<int>();

  /** 是否双倍转化 */
  public function set doubleZhuanHua(value:Boolean):void {
    this._doubleZhuanHua = value;
  }

  /** 是否双倍转化 */
  public function get doubleZhuanHua():Boolean {
    return this._doubleZhuanHua;
  }

  /** 武将唯一ID */
  public function set heroUIDs(value:Vector.<int>):void {
    this._heroUIDs = value;
  }

  /** 武将唯一ID */
  public function get heroUIDs():Vector.<int> {
    return this._heroUIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeBoolean(_buf, this._doubleZhuanHua);
    writeInt(_buf, this._heroUIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroUIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _heroUIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._doubleZhuanHua = readBoolean(_buf);
    size52413035 = readInt(_buf);
    this._heroUIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroUIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 305;
  }
}
}