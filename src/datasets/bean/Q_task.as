package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 任务
 */
public class Q_task extends Bean {
    /** 任务名字 */
    private var _q_name:String;
    /** 任务描述 */
    private var _q_desc:String;
    /** 任务类型(0战略任务,1普通任务) */
    private var _q_type:int;
    /** 任务奖励 */
    private var _q_prize:String;
    /** 任务跳转链接 */
    private var _q_link:String;
    /** 图标 */
    private var _q_ico:String;

    override public function read(_buf:ByteArray): void {
        this._q_name = readString(_buf);
        this._q_desc = readString(_buf);
        this._q_type = readInt(_buf);
        this._q_prize = readString(_buf);
        this._q_link = readString(_buf);
        this._q_ico = readString(_buf);
    }

    public function get q_name():String {
        return _q_name;
    }
    public function get q_desc():String {
        return _q_desc;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_prize():String {
        return _q_prize;
    }
    public function get q_link():String {
        return _q_link;
    }
    public function get q_ico():String {
        return _q_ico;
    }
}
}
