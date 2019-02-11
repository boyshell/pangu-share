
namespace App.Message.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将重置
     */
    public class ResHeroResetMessage : Net.Message
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
        }

      public override int Id()
      {
        return 318;
      }
    }
}