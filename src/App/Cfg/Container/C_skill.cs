using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能
     */
    public class C_skill {

        private List<Q_skill> _list;
        public List<Q_skill> List => _list;

        private Dictionary<int, Q_skill> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_skill> Dic => _dic; // todo key的类型自己确认

        public C_skill(BinaryReader reader)
        {
            Q_skill[] array = Q_skill.Create(reader);
            _list = new List<Q_skill>(array);

            _dic = new Dictionary<int, Q_skill>(); // todo key的类型自己确认
            _list.ForEach((Q_skill model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
