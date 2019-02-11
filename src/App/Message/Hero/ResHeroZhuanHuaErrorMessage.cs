
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将转化错误
   */
  public class ResHeroZhuanHuaErrorMessage : Net.Message
  {
    /** 1:找不到武将卡;2:武将卡非自由;3:系统错误; */
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
      return 307;
    }
  }
}