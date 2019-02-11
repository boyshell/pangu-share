
namespace App.Message.Login
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 版本验证
     */
    public class ResLoginVersionCheckMessage : Net.Message
    {
        /** 如果存在,则用该配置 */
        public byte[] config{ get; set; }
        /** 如果config为空,则根据该配置数据版本号去获取配置 */
        public int configDataVersion{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBytes(writer, this.config);
            WriteInt(writer, this.configDataVersion);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.config = ReadBytes(reader);
            this.configDataVersion = ReadInt(reader);
        }

      public override int Id()
      {
        return 5;
      }
    }
}