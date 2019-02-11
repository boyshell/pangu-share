
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将重置错误
   */
  public class ResHeroResetErrorMessage : Net.Message
  {
    /** 1:参数错误; */
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
      return 319;
    }
  }
}