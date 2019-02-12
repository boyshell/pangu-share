using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * BUFF循环
     */
    public class BFightActionBuffTick : Bean {

        public BFightActionBuffTick() {}
        public BFightActionBuffTick(System.IO.BinaryReader reader) => Read(reader);

        /** BUFF唯一ID */
        public int buffUID{ get; set; }
        /** BUFF产生的效果 */
        public BFightActionBuffEffect effect{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.buffUID);
            WriteBean(writer, this.effect);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.buffUID = ReadInt(reader);
            this.effect = ReadBool(reader) ? new BFightActionBuffEffect(reader) : null;
        }
    }
}