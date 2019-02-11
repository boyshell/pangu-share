
namespace App.Message.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 重置武将配点
     */
    public class ResHeroPeiDianResetMessage : Net.Message
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 下次可免费重置配点时间 */
        public int freePeiDianResetTime{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.freePeiDianResetTime);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.freePeiDianResetTime = ReadInt(reader);
        }

      public override int Id()
      {
        return 312;
      }
    }
}