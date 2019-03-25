using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能参数
     */
    public class C_skill_param {

        private System.Collections.Generic.List<Q_skill_param> _list;
        public System.Collections.Generic.List<Q_skill_param> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_skill_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_skill_param> Dic => _dic;

        public C_skill_param(BinaryReader reader)
        {
            Q_skill_param[] array = Q_skill_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_skill_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_skill_param>();
            _list.ForEach((Q_skill_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
