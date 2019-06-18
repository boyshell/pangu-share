package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * buff日志
 */
public class Q_buff_log extends Bean {
    /** buff的日志类型 */
    private var _q_log_type:int;
    /** 名字 */
    private var _q_name:String;
    /** 触发字符串 */
    private var _q_trigger:String;
    /** 添加时的特效 */
    private var _q_effect:String;

    override public function read(_buf:ByteArray): void {
        this._q_log_type = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_trigger = readString(_buf);
        this._q_effect = readString(_buf);
    }

    public function get q_log_type():int {
        return _q_log_type;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_trigger():String {
        return _q_trigger;
    }
    public function get q_effect():String {
        return _q_effect;
    }
}
}
