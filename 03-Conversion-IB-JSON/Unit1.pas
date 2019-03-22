unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FMX.Controls.Presentation, FMX.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageJSON;

type
  TForm1 = class(TForm)
    IbdbdemosConnection: TFDConnection;
    BiolifeTable: TFDQuery;
    Button1: TButton;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses System.ioutils;

procedure TForm1.Button1Click(Sender: TObject);
begin
  BiolifeTable.SaveToFile(tpath.Combine(tpath.GetDocumentsPath,
    'biolife.json'));
  close;
end;

end.
