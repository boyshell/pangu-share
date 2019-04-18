
namespace App.PacketMessage.User
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 更新值
     */
    public class ResUserUpdateValuePacketMessage : Network.PacketMessage
    {
        /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
        public int type{ get; set; }
        /** 值 */
        public int value{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.type);
            WriteInt(writer, this.value);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.type = ReadInt(reader);
            this.value = ReadInt(reader);
        }

      public override int Id
      {
        get { return 17; }
      }
    }
}