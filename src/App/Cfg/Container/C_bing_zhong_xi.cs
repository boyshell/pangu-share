using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵种系
     */
    public class C_bing_zhong_xi {

        private List<Q_bing_zhong_xi> _list;
        public List<Q_bing_zhong_xi> List => _list;

        private Dictionary<int, Q_bing_zhong_xi> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_bing_zhong_xi> Dic => _dic; // todo key的类型自己确认

        public C_bing_zhong_xi(BinaryReader reader)
        {
            Q_bing_zhong_xi[] array = Q_bing_zhong_xi.Create(reader);
            _list = new List<Q_bing_zhong_xi>(array);

            _dic = new Dictionary<int, Q_bing_zhong_xi>(); // todo key的类型自己确认
            _list.ForEach((Q_bing_zhong_xi model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
