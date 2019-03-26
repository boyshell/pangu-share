using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 领地参数
     */
    public class C_land_param {

        private System.Collections.Generic.List<Q_land_param> _list;
        public System.Collections.Generic.List<Q_land_param> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_land_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_land_param> Dic => _dic;

        public C_land_param(BinaryReader reader)
        {
            Q_land_param[] array = Q_land_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_land_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_land_param>();
            _list.ForEach((Q_land_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
