using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗参数
     */
    public class C_fight_param {

        private System.Collections.Generic.List<Q_fight_param> _list;
        public System.Collections.Generic.List<Q_fight_param> System.Collections.Generic.List => _list;

        private System.Collections.Generic.Dictionary<int, Q_fight_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_fight_param> Dic => _dic;

        public C_fight_param(BinaryReader reader)
        {
            Q_fight_param[] array = Q_fight_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_fight_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_fight_param>();
            _list.ForEach((Q_fight_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
