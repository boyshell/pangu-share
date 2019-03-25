using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能等级
     */
    public class C_skill_level {

        private System.Collections.Generic.List<Q_skill_level> _list;
        public System.Collections.Generic.List<Q_skill_level> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_skill_level> _dic;
        public System.Collections.Generic.Dictionary<int, Q_skill_level> Dic => _dic;

        public C_skill_level(BinaryReader reader)
        {
            Q_skill_level[] array = Q_skill_level.Create(reader);
            _list = new System.Collections.Generic.List<Q_skill_level>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_skill_level>();
            _list.ForEach((Q_skill_level model) =>
            {
                _dic[model.q_skill_level] = model;
            });
        }
    }
}
