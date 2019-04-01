using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 领地
     */
    public class C_land {

        private System.Collections.Generic.List<Q_land> _list;
        public System.Collections.Generic.List<Q_land> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_land> _dic;
        public System.Collections.Generic.Dictionary<int, Q_land> Dic => _dic;

        public C_land(BinaryReader reader)
        {
            Q_land[] array = Q_land.Create(reader);
            _list = new System.Collections.Generic.List<Q_land>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_land>();
            _list.ForEach((Q_land model) =>
            {
                _dic[model.q_production_type] = model;
            });
        }

        public Q_land GetValue(int key)
        {
            Q_land ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
