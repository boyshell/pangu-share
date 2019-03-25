using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * buff
     */
    public class C_buff {

        private System.Collections.Generic.List<Q_buff> _list;
        public System.Collections.Generic.List<Q_buff> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_buff> _dic;
        public System.Collections.Generic.Dictionary<int, Q_buff> Dic => _dic;

        public C_buff(BinaryReader reader)
        {
            Q_buff[] array = Q_buff.Create(reader);
            _list = new System.Collections.Generic.List<Q_buff>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_buff>();
            _list.ForEach((Q_buff model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
