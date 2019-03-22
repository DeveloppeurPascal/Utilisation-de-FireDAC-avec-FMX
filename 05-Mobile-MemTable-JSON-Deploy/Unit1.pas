unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, System.Bindings.Outputs, FMX.Bind.Editors, FMX.Bind.Grid,
  Data.Bind.Grid, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Layouts, FMX.Bind.Navigator,
  FMX.ExtCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.Menus,
  FMX.StdCtrls, FireDAC.Stan.StorageJSON;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    ImageViewer1: TImageViewer;
    BindNavigator1: TBindNavigator;
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    MainMenu1: TMainMenu;
    Splitter1: TSplitter;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    FDMemTable1SPECIES_NO: TFloatField;
    FDMemTable1CATEGORY: TStringField;
    FDMemTable1COMMON_NAME: TStringField;
    FDMemTable1SPECIES_NAME: TStringField;
    FDMemTable1LENGTH__CM_: TFloatField;
    FDMemTable1LENGTH_IN: TFloatField;
    FDMemTable1NOTES: TMemoField;
    FDMemTable1GRAPHIC: TBlobField;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses System.IOUtils;

procedure TForm1.FormCreate(Sender: TObject);
var
  nom_fichier_orig, nom_fichier_dest: string;
begin
  nom_fichier_dest := tpath.Combine(tpath.GetDocumentsPath, 'BioLife.json');
  if (not tfile.Exists(nom_fichier_dest)) then
  begin
{$IF Defined(IOS)}
    nom_fichier_orig := tpath.Combine(ExtractFilepath(paramstr(0)),
      'biolife.json');
    // dossier de déploiement "./" sur iOS
{$ELSEIF Defined(ANDROID)}
    nom_fichier_orig := tpath.Combine(tpath.GetDownloadsPath, 'biolife.json');
    // dossier de déploiement "./assets/Download" sur Android
{$ELSEIF Defined(MSWINDOWS)}
    nom_fichier_orig := '..\..\biolife.json';
{$ELSE}
    exit;
{$ENDIF}
    if tfile.Exists(nom_fichier_orig) then
      tfile.Copy(nom_fichier_orig, nom_fichier_dest);
  end;
  FDMemTable1.LoadFromFile(nom_fichier_dest);
end;

end.
