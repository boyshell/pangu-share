using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将参数
     */
    public class C_hero_param {

        private System.Collections.Generic.List<Q_hero_param> _list;
        public System.Collections.Generic.List<Q_hero_param> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_hero_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_hero_param> Dic => _dic;

        public C_hero_param(BinaryReader reader)
        {
            Q_hero_param[] array = Q_hero_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_hero_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_hero_param>();
            _list.ForEach((Q_hero_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
