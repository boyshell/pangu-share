using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 技能参数
     */
    public class C_skill_param {

        private List<Q_skill_param> _list;
        public List<Q_skill_param> List => _list;

        private Dictionary<int, Q_skill_param> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_skill_param> Dic => _dic; // todo key的类型自己确认

        public C_skill_param(BinaryReader reader)
        {
            Q_skill_param[] array = Q_skill_param.Create(reader);
            _list = new List<Q_skill_param>(array);

            _dic = new Dictionary<int, Q_skill_param>(); // todo key的类型自己确认
            _list.ForEach((Q_skill_param model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
