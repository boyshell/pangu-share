using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种
     */
    public class C_bing_zhong {

        private System.Collections.Generic.List<Q_bing_zhong> _list;
        public System.Collections.Generic.List<Q_bing_zhong> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_bing_zhong> _dic;
        public System.Collections.Generic.Dictionary<int, Q_bing_zhong> Dic => _dic;

        public C_bing_zhong(BinaryReader reader)
        {
            Q_bing_zhong[] array = Q_bing_zhong.Create(reader);
            _list = new System.Collections.Generic.List<Q_bing_zhong>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_bing_zhong>();
            _list.ForEach((Q_bing_zhong model) =>
            {
                _dic[model.q_bing_zhong] = model;
            });
        }

        public Q_bing_zhong GetValue(int key)
        {
            Q_bing_zhong ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
