
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将配点错误
   */
  public class ResHeroPeiDianErrorMessage : Net.Message
  {
    /** 1:参数错误;2:找不到武将卡;3:属性点不足; */
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
      return 322;
    }
  }
}