package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * buff
 */
public class Q_buff extends Bean {
    /** id */
    private var _q_id:int;
    /** 名字 */
    private var _q_name:String;
    /** 类型 */
    private var _q_type:int;
    /** 参数 */
    private var _q_param:string;
    /**  */
    private var _q_trigger_str:string;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_type = readInt(_buf);
        this._q_param = readString(_buf);
        this._q_trigger_str = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_param():string {
        return _q_param;
    }
    public function get q_trigger_str():string {
        return _q_trigger_str;
    }
}
}