using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募卡包
     */
    public class C_gambling_house {

        private List<Q_gambling_house> _list;
        public List<Q_gambling_house> List => _list;

        private Dictionary<int, Q_gambling_house> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_gambling_house> Dic => _dic; // todo key的类型自己确认

        public C_gambling_house(BinaryReader reader)
        {
            Q_gambling_house[] array = Q_gambling_house.Create(reader);
            _list = new List<Q_gambling_house>(array);

            _dic = new Dictionary<int, Q_gambling_house>(); // todo key的类型自己确认
            _list.ForEach((Q_gambling_house model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
