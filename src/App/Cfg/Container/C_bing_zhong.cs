using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种
     */
    public class C_bing_zhong {

        private List<Q_bing_zhong> _list;
        public List<Q_bing_zhong> List => _list;

        private Dictionary<int, Q_bing_zhong> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_bing_zhong> Dic => _dic; // todo key的类型自己确认

        public C_bing_zhong(BinaryReader reader)
        {
            Q_bing_zhong[] array = Q_bing_zhong.Create(reader);
            _list = new List<Q_bing_zhong>(array);

            _dic = new Dictionary<int, Q_bing_zhong>(); // todo key的类型自己确认
            _list.ForEach((Q_bing_zhong model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
