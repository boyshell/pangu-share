using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 点将台
     */
    public class C_building_dian_jiang_tai {

        private List<Q_building_dian_jiang_tai> _list;
        public List<Q_building_dian_jiang_tai> List => _list;

        private Dictionary<int, Q_building_dian_jiang_tai> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_building_dian_jiang_tai> Dic => _dic; // todo key的类型自己确认

        public C_building_dian_jiang_tai(BinaryReader reader)
        {
            Q_building_dian_jiang_tai[] array = Q_building_dian_jiang_tai.Create(reader);
            _list = new List<Q_building_dian_jiang_tai>(array);

            _dic = new Dictionary<int, Q_building_dian_jiang_tai>(); // todo key的类型自己确认
            _list.ForEach((Q_building_dian_jiang_tai model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
