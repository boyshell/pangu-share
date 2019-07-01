package datasets.container {

import datasets.bean.Q_chapter;
import engine.base.data.ByteArray;
import engine.base.data.ByteBufferUtil;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 章节
 */
public class Q_chapterContainer {

    private static var _list: Vector.<Q_chapter> = new Vector.<Q_chapter>();

    private static var _dict: Object = new Object();


    public static function SetData(bytes: ByteArray): void{
        _list.length = 0;
        _dict = new Object();
        var num:int = ByteBufferUtil.readInt(bytes);
        for (var i:int = 0; i < num; i++) {
            var bean:Q_chapter = new Q_chapter();
            bean.read(bytes);
            _list.push(bean);
            _dict[String(bean.q_chapter)] = bean;
        }
    }

    public static function get list(): Vector.<Q_chapter> {
        return _list;
    }

    public static function get dict(): Object {
        return _dict;
    }

    public static function GetValue(key:*): Q_chapter {
        return _dict[key.toString()];
    }
}
}
