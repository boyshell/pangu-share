package com.game.net.message.mail {

import com.game.net.message.user.BUserValue;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 系统邮件
 */
public class BMailSystem extends Bean {
  /** 邮件唯一ID */
  private var _uid:int;
  /** 是否未读 */
  private var _notify:Boolean;
  /** 是否已领取 */
  private var _rcv:Boolean;
  /** 时间 */
  private var _time:int;
  /** 标题 */
  private var _title:String;
  /** 内容 */
  private var _content:String;
  /** 附件(值) */
  private var _values:Vector.<BUserValue> = new Vector.<BUserValue>();

  /** 邮件唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 邮件唯一ID */
  public function get uid():int {
    return this._uid;
  }

  /** 是否未读 */
  public function set notify(value:Boolean):void {
    this._notify = value;
  }

  /** 是否未读 */
  public function get notify():Boolean {
    return this._notify;
  }

  /** 是否已领取 */
  public function set rcv(value:Boolean):void {
    this._rcv = value;
  }

  /** 是否已领取 */
  public function get rcv():Boolean {
    return this._rcv;
  }

  /** 时间 */
  public function set time(value:int):void {
    this._time = value;
  }

  /** 时间 */
  public function get time():int {
    return this._time;
  }

  /** 标题 */
  public function set title(value:String):void {
    this._title = value;
  }

  /** 标题 */
  public function get title():String {
    return this._title;
  }

  /** 内容 */
  public function set content(value:String):void {
    this._content = value;
  }

  /** 内容 */
  public function get content():String {
    return this._content;
  }

  /** 附件(值) */
  public function set values(value:Vector.<BUserValue>):void {
    this._values = value;
  }

  /** 附件(值) */
  public function get values():Vector.<BUserValue> {
    return this._values;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeBoolean(_buf, this._notify);
        writeBoolean(_buf, this._rcv);
        writeInt(_buf, this._time);
        writeString(_buf, this._title);
        writeString(_buf, this._content);
    writeInt(_buf, this._values.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._values.length; ++i_am_tmp_i) {
        _values[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._notify = readBoolean(_buf);
        this._rcv = readBoolean(_buf);
        this._time = readInt(_buf);
        this._title = readString(_buf);
        this._content = readString(_buf);
    size52413035 = readInt(_buf);
    this._values = new Vector.<BUserValue>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._values[i_am_tmp_i] = readBeanInList(_buf, BUserValue) as BUserValue;
    }
  }
}
}