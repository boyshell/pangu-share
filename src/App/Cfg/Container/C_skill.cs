using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能
     */
    public class C_skill {

        private System.Collections.Generic.List<Q_skill> _list;
        public System.Collections.Generic.List<Q_skill> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_skill> _dic;
        public System.Collections.Generic.Dictionary<int, Q_skill> Dic => _dic;

        public C_skill(BinaryReader reader)
        {
            Q_skill[] array = Q_skill.Create(reader);
            _list = new System.Collections.Generic.List<Q_skill>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_skill>();
            _list.ForEach((Q_skill model) =>
            {
                _dic[model.q_id] = model;
            });
        }

        public Q_skill GetValue(int key)
        {
            Q_skill ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
