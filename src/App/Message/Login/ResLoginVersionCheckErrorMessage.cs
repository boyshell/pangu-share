
namespace App.Message.Login
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 版本验证错误
   */
  public class ResLoginVersionCheckErrorMessage : Net.Message
  {
    /** 1:消息代码不一致;2:配置代码不一致;3:配置数据不一致; */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id()
    {
      return 6;
    }
  }
}