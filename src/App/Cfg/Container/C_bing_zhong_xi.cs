using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵种系
     */
    public class C_bing_zhong_xi {

        private System.Collections.Generic.List<Q_bing_zhong_xi> _list;
        public System.Collections.Generic.List<Q_bing_zhong_xi> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_bing_zhong_xi> _dic;
        public System.Collections.Generic.Dictionary<int, Q_bing_zhong_xi> Dic => _dic;

        public C_bing_zhong_xi(BinaryReader reader)
        {
            Q_bing_zhong_xi[] array = Q_bing_zhong_xi.Create(reader);
            _list = new System.Collections.Generic.List<Q_bing_zhong_xi>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_bing_zhong_xi>();
            _list.ForEach((Q_bing_zhong_xi model) =>
            {
                _dic[model.q_xi] = model;
            });
        }
    }
}
