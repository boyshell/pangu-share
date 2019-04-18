using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 关卡
     */
    public class C_guan_qia {

        private System.Collections.Generic.List<Q_guan_qia> _list;
        public System.Collections.Generic.List<Q_guan_qia> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_guan_qia> _dic;
        public System.Collections.Generic.Dictionary<int, Q_guan_qia> Dic => _dic;

        public C_guan_qia(BinaryReader reader)
        {
            Q_guan_qia[] array = Q_guan_qia.Create(reader);
            _list = new System.Collections.Generic.List<Q_guan_qia>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_guan_qia>();
            _list.ForEach((Q_guan_qia model) =>
            {
                _dic[model.q_id] = model;
            });
        }

        public Q_guan_qia GetValue(int key)
        {
            Q_guan_qia ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
