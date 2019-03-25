using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑
     */
    public class C_building {

        private List<Q_building> _list;
        public List<Q_building> List => _list;

        private Dictionary<int, Q_building> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_building> Dic => _dic; // todo key的类型自己确认

        public C_building(BinaryReader reader)
        {
            Q_building[] array = Q_building.Create(reader);
            _list = new List<Q_building>(array);

            _dic = new Dictionary<int, Q_building>(); // todo key的类型自己确认
            _list.ForEach((Q_building model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
