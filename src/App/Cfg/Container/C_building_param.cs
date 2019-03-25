using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑参数
     */
    public class C_building_param {

        private List<Q_building_param> _list;
        public List<Q_building_param> List => _list;

        private Dictionary<int, Q_building_param> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_building_param> Dic => _dic; // todo key的类型自己确认

        public C_building_param(BinaryReader reader)
        {
            Q_building_param[] array = Q_building_param.Create(reader);
            _list = new List<Q_building_param>(array);

            _dic = new Dictionary<int, Q_building_param>(); // todo key的类型自己确认
            _list.ForEach((Q_building_param model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
