using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 点将台
     */
    public class C_building_dian_jiang_tai {

        private System.Collections.Generic.List<Q_building_dian_jiang_tai> _list;
        public System.Collections.Generic.List<Q_building_dian_jiang_tai> System.Collections.Generic.List => _list;

        private System.Collections.Generic.Dictionary<int, Q_building_dian_jiang_tai> _dic;
        public System.Collections.Generic.Dictionary<int, Q_building_dian_jiang_tai> Dic => _dic;

        public C_building_dian_jiang_tai(BinaryReader reader)
        {
            Q_building_dian_jiang_tai[] array = Q_building_dian_jiang_tai.Create(reader);
            _list = new System.Collections.Generic.List<Q_building_dian_jiang_tai>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_building_dian_jiang_tai>();
            _list.ForEach((Q_building_dian_jiang_tai model) =>
            {
                _dic[model.q_level] = model;
            });
        }
    }
}
