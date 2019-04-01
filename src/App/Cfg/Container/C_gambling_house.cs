using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募卡包
     */
    public class C_gambling_house {

        private System.Collections.Generic.List<Q_gambling_house> _list;
        public System.Collections.Generic.List<Q_gambling_house> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_gambling_house> _dic;
        public System.Collections.Generic.Dictionary<int, Q_gambling_house> Dic => _dic;

        public C_gambling_house(BinaryReader reader)
        {
            Q_gambling_house[] array = Q_gambling_house.Create(reader);
            _list = new System.Collections.Generic.List<Q_gambling_house>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_gambling_house>();
            _list.ForEach((Q_gambling_house model) =>
            {
                _dic[model.q_id] = model;
            });
        }

        public Q_gambling_house GetValue(int key)
        {
            Q_gambling_house ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
