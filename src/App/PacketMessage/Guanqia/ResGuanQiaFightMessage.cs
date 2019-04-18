using App.PacketMessage.Fight;

namespace App.PacketMessage.Guanqia
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 闯关
     */
    public class ResGuanQiaFightPacketMessage : Network.PacketMessage
    {
        /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡的话 */
        public int guanQiaID{ get; set; }
        /** 战斗结果 */
        public BFight result{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.guanQiaID);
            WriteBean(writer, this.result);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.guanQiaID = ReadInt(reader);
            this.result = ReadBool(reader) ? new BFight(reader) : null;
        }

      public override int Id
      {
        get { return 380; }
      }
    }
}