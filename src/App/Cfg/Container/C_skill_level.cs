using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能等级
     */
    public class C_skill_level {

        private List<Q_skill_level> _list;
        public List<Q_skill_level> List => _list;

        private Dictionary<int, Q_skill_level> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_skill_level> Dic => _dic; // todo key的类型自己确认

        public C_skill_level(BinaryReader reader)
        {
            Q_skill_level[] array = Q_skill_level.Create(reader);
            _list = new List<Q_skill_level>(array);

            _dic = new Dictionary<int, Q_skill_level>(); // todo key的类型自己确认
            _list.ForEach((Q_skill_level model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
