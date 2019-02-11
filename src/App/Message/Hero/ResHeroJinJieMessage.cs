
namespace App.Message.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将进阶
     */
    public class ResHeroJinJieMessage : Net.Message
    {
        /** 武将唯一ID */
        public int heroUID{ get; set; }
        /** 星 */
        public int star{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.star);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.star = ReadInt(reader);
        }

      public override int Id()
      {
        return 303;
      }
    }
}