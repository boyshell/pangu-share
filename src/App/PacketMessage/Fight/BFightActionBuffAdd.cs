using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF添加
     */
    public class BFightActionBuffAdd : Bean {

        public BFightActionBuffAdd() {}
        public BFightActionBuffAdd(System.IO.BinaryReader reader) => Read(reader);

        /** BUFF唯一ID */
        public int buffUID{ get; set; }
        /** BUFF的ID */
        public int buffID{ get; set; }
        /** BUFF产生的效果 */
        public BFightActionBuffEffect effect{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.buffUID);
            WriteInt(writer, this.buffID);
            WriteBean(writer, this.effect);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.buffUID = ReadInt(reader);
            this.buffID = ReadInt(reader);
            this.effect = ReadBool(reader) ? new BFightActionBuffEffect(reader) : null;
        }
    }
}