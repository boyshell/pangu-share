using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑参数
     */
    public class C_building_param {

        private System.Collections.Generic.List<Q_building_param> _list;
        public System.Collections.Generic.List<Q_building_param> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_building_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_building_param> Dic => _dic;

        public C_building_param(BinaryReader reader)
        {
            Q_building_param[] array = Q_building_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_building_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_building_param>();
            _list.ForEach((Q_building_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
