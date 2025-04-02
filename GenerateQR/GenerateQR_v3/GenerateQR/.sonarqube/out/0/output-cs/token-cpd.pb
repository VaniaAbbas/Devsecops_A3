�
]C:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Configuration 
. 
SetBasePath !
(! "
	Directory" +
.+ ,
GetCurrentDirectory, ?
(? @
)@ A
)A B
. 
AddJsonFile 
( 
$str 0
,0 1
optional2 :
:: ;
true< @
,@ A
reloadOnChangeB P
:P Q
trueR V
)V W
;W X
builder		 
.		 
Services		 
.		 #
AddControllersWithViews		 (
(		( )
)		) *
;		* +
builder

 
.

 
Services

 
.

 
AddSingleton

 
<

 
QRCodeService

 +
>

+ ,
(

, -
)

- .
;

. /
builder 
. 
Services 
. 
	AddScoped 
< 

HomeHelper %
>% &
(& '
)' (
;( )
builder 
. 
Services 
. 
	AddScoped 
< &
IRazorViewToStringRenderer 5
,5 6%
RazorViewToStringRenderer7 P
>P Q
(Q R
)R S
;S T
builder 
. 
Services 
. 
AddSingleton 
<  
IHttpContextAccessor 2
,2 3
HttpContextAccessor4 G
>G H
(H I
)I J
;J K
ConfigurationReader 
.  
SetConfigurationRoot (
(( )
builder) 0
.0 1
Configuration1 >
)> ?
;? @
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
! 
app 
. 	
Environment	 
. 
IsDevelopment "
(" #
)# $
)$ %
{ 
app 
. 
UseExceptionHandler 
( 
$str )
)) *
;* +
app 
. 
UseHsts 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseStaticFiles 
( 
) 
; 
app 
. 

UseRouting 
( 
) 
; 
app!! 
.!! 
UseAuthorization!! 
(!! 
)!! 
;!! 
app## 
.## 
UseEndpoints## 
(## 
	endpoints## 
=>## 
{$$ 
	endpoints%% 
.%% 
MapControllers%% 
(%% 
)%% 
;%% 
}&& 
)&& 
;&& 
app)) 
.)) 
MapControllerRoute)) 
()) 
name** 
:** 	
$str**
 
,** 
pattern++ 
:++ 
$str++ 5
)++5 6
;++6 7
app-- 
.-- 
Run-- 
(-- 
)-- 	
;--	 
�8
hC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Models\ReportModel.cs
	namespace 	

GenerateQR
 
. 
Models 
{ 
public 

class 
	LineItems 
{		 
public

 
string

 
item

 
=

 
$str

 
;

  
public 
string 
Description !
=" #
$str$ &
;& '
public 
decimal 
? 
Quantity  
=! "
$num# $
;$ %
public 
decimal 
? 
Rate 
= 
$num  
;  !
public 
decimal 
? 
Discount  
=! "
$num# $
;$ %
public 
decimal 
? 
Total 
= 
$num  !
;! "
public 
string 
InsuranceCO !
=" #
$str$ &
;& '
public 
string 

BatchMonth  
=! "
$str# %
;% &
} 
public 

class 
ReportModel 
{ 
public 
string 
HealthProvider $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ContactPerson #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	ContactNO 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
ContractRefrence &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
VATNO 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	InvoiceNO 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 
InvoiceDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
BillingMonth %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
DueDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   
string   
SadadBILLID   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
public!! 
string!! 
CCHINO!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public"" 
string"" 
DHSCode"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public## 
string## 
item## 
{## 
get##  
;##  !
set##" %
;##% &
}##' (
public$$ 
string$$ 
Description$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public%% 
string%% 

BatchMonth%%  
{%%! "
get%%# &
;%%& '
set%%( +
;%%+ ,
}%%- .
public&& 
string&& 
InsuranceCO&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public'' 
decimal'' 
?'' 
Quantity''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public(( 
decimal(( 
?(( 
Rate(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public)) 
decimal)) 
?)) 
Discount))  
{))! "
get))# &
;))& '
set))( +
;))+ ,
}))- .
public** 
decimal** 
?** 
Total** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public++ 
decimal++ 
?++ 
TotalExcVAT++ #
{++$ %
get++& )
;++) *
set+++ .
;++. /
}++0 1
public,, 
decimal,, 
?,, 
VAT,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
public-- 
decimal-- 
?-- 
TotalWithVAT-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
public.. 
decimal.. 
?.. 
SegmentPrice.. $
{..% &
get..' *
;..* +
set.., /
;../ 0
}..1 2
public// 
string// 
ContractType// "
{//# $
get//% (
;//( )
set//* -
;//- .
}/// 0
public00 
string00 
	ClaimRate00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
public11 
string11 
CRMQuantity11 !
{11" #
get11$ '
;11' (
set11) ,
;11, -
}11. /
public22 
bool22 
?22 

Invoicable22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
public33 
string33 
GroupProvider33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
public44 
string44 
TotalInWords44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
public55 
string55 
QrCodeImageBase6455 '
{55( )
get55* -
;55- .
set55/ 2
;552 3
}554 5
public66 
string66 
COMMERCIALREG66 #
{66$ %
get66& )
;66) *
set66+ .
;66. /
}660 1
public77 
DateTime77 
?77 
CONTRACTDATE77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public99 
	LineItems99 
[99 
]99 
items99  
;99  !
}:: 
};; �
dC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Models\QRModel.cs
	namespace 	

GenerateQR
 
. 
Models 
{ 
public 

class 
QRModel 
{ 
public 
string 

SellerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	VatNumber 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	TimeStamp 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
InvoiceAmount #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
	VatAmount		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} �$
jC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Models\QRCodeService.cs
public 
class 
QRCodeService 
{ 
public 

string 
GenerateQRCode  
(  !
QRModel! (
model) .
). /
{ 
var 
byteBuilder 
= 
new 
ByteBuilder )
() *
)* +
;+ ,
byteBuilder		 
.		 
AddByte		 
(		 
$num		 
)		 
;		 
byte 
[ 
] 
seleerNameBytes 
=  
Encoding! )
.) *
UTF8* .
.. /
GetBytes/ 7
(7 8
model8 =
.= >

SellerName> H
)H I
;I J
byteBuilder 
. 
AddByte 
( 
( 
byte !
)! "
seleerNameBytes" 1
.1 2
Length2 8
)8 9
;9 :
byteBuilder 
. 
AddBytes 
( 
seleerNameBytes ,
), -
;- .
byteBuilder 
. 
AddByte 
( 
$num 
) 
; 
byte 
[ 
] 
vatNumberBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7
model7 <
.< =
	VatNumber= F
)F G
;G H
byteBuilder 
. 
AddByte 
( 
( 
byte !
)! "
vatNumberBytes" 0
.0 1
Length1 7
)7 8
;8 9
byteBuilder 
. 
AddBytes 
( 
vatNumberBytes +
)+ ,
;, -
byteBuilder 
. 
AddByte 
( 
$num 
) 
; 
byte 
[ 
] 
timeStampBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7
model7 <
.< =
	TimeStamp= F
)F G
;G H
byteBuilder 
. 
AddByte 
( 
( 
byte !
)! "
timeStampBytes" 0
.0 1
Length1 7
)7 8
;8 9
byteBuilder 
. 
AddBytes 
( 
timeStampBytes +
)+ ,
;, -
byteBuilder 
. 
AddByte 
( 
$num 
) 
; 
byte 
[ 
] 
invoiceAmountBytes !
=" #
Encoding$ ,
., -
UTF8- 1
.1 2
GetBytes2 :
(: ;
model; @
.@ A
InvoiceAmountA N
)N O
;O P
byteBuilder 
. 
AddByte 
( 
( 
byte !
)! "
invoiceAmountBytes" 4
.4 5
Length5 ;
); <
;< =
byteBuilder 
. 
AddBytes 
( 
invoiceAmountBytes /
)/ 0
;0 1
byteBuilder 
. 
AddByte 
( 
$num 
) 
; 
byte 
[ 
] 
vatAmountBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7
model7 <
.< =
	VatAmount= F
)F G
;G H
byteBuilder   
.   
AddByte   
(   
(   
byte   !
)  ! "
vatAmountBytes  " 0
.  0 1
Length  1 7
)  7 8
;  8 9
byteBuilder!! 
.!! 
AddBytes!! 
(!! 
vatAmountBytes!! +
)!!+ ,
;!!, -
byte## 
[## 
]## 
qrCodeBytes## 
=## 
byteBuilder## (
.##( )
GetBytes##) 1
(##1 2
)##2 3
;##3 4
return$$ 
Convert$$ 
.$$ 
ToBase64String$$ %
($$% &
qrCodeBytes$$& 1
)$$1 2
;$$2 3
}%% 
}'' �
kC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Models\ErrorViewModel.cs
	namespace 	

GenerateQR
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 �

hC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Models\ByteBuilder.cs
	namespace 	

GenerateQR
 
. 
Models 
{ 
public 

class 
ByteBuilder 
{ 
private 
List 
< 
byte 
> 
bytes  
=! "
new# &
List' +
<+ ,
byte, 0
>0 1
(1 2
)2 3
;3 4
public 
void 
AddByte 
( 
byte  
value! &
)& '
{ 	
bytes 
. 
Add 
( 
value 
) 
; 
}		 	
public

 
void

 
AddBytes

 
(

 
byte

 !
[

! "
]

" #
values

$ *
)

* +
{ 	
bytes 
. 
AddRange 
( 
values !
)! "
;" #
} 	
public 
byte 
[ 
] 
GetBytes 
( 
)  
{ 	
return 
bytes 
. 
ToArray  
(  !
)! "
;" #
} 	
} 
} �F
wC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\RazorViewToStringRenderer.cs
	namespace		 	

GenerateQR		
 
.		 
Helpers		 
{

 
public 

class %
RazorViewToStringRenderer *
:+ ,&
IRazorViewToStringRenderer- G
{ 
private 
IRazorViewEngine  
_viewEngine! ,
;, -
private 
ITempDataProvider !
_tempDataProvider" 3
;3 4
private 
IServiceProvider  
_serviceProvider! 1
;1 2
public %
RazorViewToStringRenderer (
(( )
IRazorViewEngine 

viewEngine '
,' (
ITempDataProvider 
tempDataProvider .
,. /
IServiceProvider 
serviceProvider ,
), -
{ 	
_viewEngine 
= 

viewEngine $
;$ %
_tempDataProvider 
= 
tempDataProvider  0
;0 1
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
async 
Task 
< 
string  
>  !#
RenderViewToStringAsync" 9
(9 :
string: @
viewNameA I
)I J
{ 	
var 
actionContext 
= 
GetActionContext  0
(0 1
)1 2
;2 3
var 
view 
= 
FindView 
(  
actionContext  -
,- .
viewName/ 7
)7 8
;8 9
using   
(   
var   
output   
=   
new    #
StringWriter  $ 0
(  0 1
)  1 2
)  2 3
{!! 
var"" 
viewContext"" 
=""  !
new""" %
ViewContext""& 1
(""1 2
actionContext## !
,##! "
view$$ 
,$$ 
new%% 
ViewDataDictionary%% *
(%%* +
metadataProvider&& (
:&&( )
new&&* -&
EmptyModelMetadataProvider&&. H
(&&H I
)&&I J
,&&J K

modelState'' "
:''" #
new''$ ' 
ModelStateDictionary''( <
(''< =
)''= >
)''> ?
,''? @
new(( 
TempDataDictionary(( *
(((* +
actionContext)) %
.))% &
HttpContext))& 1
,))1 2
_tempDataProvider** )
)**) *
,*** +
output++ 
,++ 
new,, 
HtmlHelperOptions,, )
(,,) *
),,* +
),,+ ,
;,,, -
await.. 
view.. 
... 
RenderAsync.. &
(..& '
viewContext..' 2
)..2 3
;..3 4
return00 
output00 
.00 
ToString00 &
(00& '
)00' (
;00( )
}11 
}22 	
public33 
async33 
Task33 
<33 
string33  
>33  !#
RenderViewToStringAsync33" 9
<339 :
TModel33: @
>33@ A
(33A B
string33B H
viewName33I Q
,33Q R
TModel33S Y
model33Z _
)33_ `
{44 	
var55 
actionContext55 
=55 
GetActionContext55  0
(550 1
)551 2
;552 3
var66 
view66 
=66 
FindView66 
(66  
actionContext66  -
,66- .
viewName66/ 7
)667 8
;668 9
using88 
(88 
var88 
output88 
=88 
new88  #
StringWriter88$ 0
(880 1
)881 2
)882 3
{99 
var:: 
viewContext:: 
=::  !
new::" %
ViewContext::& 1
(::1 2
actionContext;; !
,;;! "
view<< 
,<< 
new== 
ViewDataDictionary== *
<==* +
TModel==+ 1
>==1 2
(==2 3
metadataProvider>> (
:>>( )
new>>* -&
EmptyModelMetadataProvider>>. H
(>>H I
)>>I J
,>>J K

modelState?? "
:??" #
new??$ ' 
ModelStateDictionary??( <
(??< =
)??= >
)??> ?
{@@ 
ModelAA 
=AA 
modelAA  %
}BB 
,BB 
newCC 
TempDataDictionaryCC *
(CC* +
actionContextDD %
.DD% &
HttpContextDD& 1
,DD1 2
_tempDataProviderEE )
)EE) *
,EE* +
outputFF 
,FF 
newGG 
HtmlHelperOptionsGG )
(GG) *
)GG* +
)GG+ ,
;GG, -
awaitII 
viewII 
.II 
RenderAsyncII &
(II& '
viewContextII' 2
)II2 3
;II3 4
returnKK 
outputKK 
.KK 
ToStringKK &
(KK& '
)KK' (
;KK( )
}LL 
}MM 	
privateNN 
IViewNN 
FindViewNN 
(NN 
ActionContextNN ,
actionContextNN- :
,NN: ;
stringNN< B
viewNameNNC K
)NNK L
{OO 	
varPP 
getViewResultPP 
=PP 
_viewEnginePP  +
.PP+ ,
GetViewPP, 3
(PP3 4
executingFilePathPP4 E
:PPE F
nullPPG K
,PPK L
viewPathPPM U
:PPU V
viewNamePPW _
,PP_ `

isMainPagePPa k
:PPk l
truePPm q
)PPq r
;PPr s
ifQQ 
(QQ 
getViewResultQQ 
.QQ 
SuccessQQ %
)QQ% &
{RR 
returnSS 
getViewResultSS $
.SS$ %
ViewSS% )
;SS) *
}TT 
varVV 
findViewResultVV 
=VV  
_viewEngineVV! ,
.VV, -
FindViewVV- 5
(VV5 6
actionContextVV6 C
,VVC D
viewNameVVE M
,VVM N

isMainPageVVO Y
:VVY Z
trueVV[ _
)VV_ `
;VV` a
ifWW 
(WW 
findViewResultWW 
.WW 
SuccessWW &
)WW& '
{XX 
returnYY 
findViewResultYY %
.YY% &
ViewYY& *
;YY* +
}ZZ 
var\\ 
searchedLocations\\ !
=\\" #
getViewResult\\$ 1
.\\1 2
SearchedLocations\\2 C
.\\C D
Concat\\D J
(\\J K
findViewResult\\K Y
.\\Y Z
SearchedLocations\\Z k
)\\k l
;\\l m
var]] 
errorMessage]] 
=]] 
string]] %
.]]% &
Join]]& *
(]]* +
Environment^^ 
.^^ 
NewLine^^ #
,^^# $
new__ 
[__ 
]__ 
{__ 
$"__ 
$str__ /
{__/ 0
viewName__0 8
}__8 9
$str__9 b
"__b c
}__d e
.__e f
Concat__f l
(__l m
searchedLocations__m ~
)__~ 
)	__ �
;
__� �
;
__� �
throwaa 
newaa %
InvalidOperationExceptionaa /
(aa/ 0
errorMessageaa0 <
)aa< =
;aa= >
}bb 	
privatedd 
ActionContextdd 
GetActionContextdd .
(dd. /
)dd/ 0
{ee 	
varff 
httpContextff 
=ff 
newff !
DefaultHttpContextff" 4
(ff4 5
)ff5 6
;ff6 7
httpContextgg 
.gg 
RequestServicesgg '
=gg( )
_serviceProvidergg* :
;gg: ;
returnhh 
newhh 
ActionContexthh $
(hh$ %
httpContexthh% 0
,hh0 1
newhh2 5
	RouteDatahh6 ?
(hh? @
)hh@ A
,hhA B
newhhC F
ActionDescriptorhhG W
(hhW X
)hhX Y
)hhY Z
;hhZ [
}ii 	
}kk 
publicll 

	interfacell &
IRazorViewToStringRendererll /
{mm 
Tasknn 
<nn 
stringnn 
>nn #
RenderViewToStringAsyncnn ,
(nn, -
stringnn- 3
viewNamenn4 <
)nn< =
;nn= >
Taskoo 
<oo 
stringoo 
>oo #
RenderViewToStringAsyncoo ,
<oo, -
TModeloo- 3
>oo3 4
(oo4 5
stringoo5 ;
viewNameoo< D
,ooD E
TModelooF L
modelooM R
)ooR S
;ooS T
}pp 
}qq �
tC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\PFDFileGeneratorHelper.cs
	namespace 	

GenerateQR
 
. 
Helpers 
{ 
public 

static 
class "
PFDFileGeneratorHelper .
{ 
public 
static 
async 
Task  #
ConvertHtmlToPdfForUFAC! 8
(8 9
string9 ?
cchino@ F
,F G
stringH N
pathO S
,S T
stringU [
html\ `
)` a
{ 	
	HtmlToPdf

 
	converter

 
=

  !
new

" %
(

% &
)

& '
;

' (
	converter 
. 
Options 
. 
MaxPageLoadTime -
=. /
$num0 3
;3 4
	converter 
. 
Options 
. 
PdfPageSize )
=* +
PdfPageSize, 7
.7 8
A48 :
;: ;
	converter 
. 
Options 
. 
PdfPageOrientation 0
=1 2
PdfPageOrientation3 E
.E F
PortraitF N
;N O
PdfDocument 
doc 
= 
	converter '
.' (
ConvertHtmlString( 9
(9 :
html: >
)> ?
;? @
byte 
[ 
] 
pdfBytes 
= 
doc !
.! "
Save" &
(& '
)' (
;( )
doc 
. 
Close 
( 
) 
; 
	Directory 
. 
CreateDirectory %
(% &
Path& *
.* +
GetDirectoryName+ ;
(; <
path< @
)@ A
)A B
;B C
File 
. 
WriteAllBytes 
( 
path #
,# $
pdfBytes% -
)- .
;. /
Console0 7
.7 8
	WriteLine8 A
(A B
cchinoB H
+I J
$strK h
)h i
;i j
} 	
} 
} ��
hC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\HomeHelper.cs
	namespace 	

GenerateQR
 
. 
Helpers 
{ 
public 

class 

HomeHelper 
{ 
private 
readonly &
IRazorViewToStringRenderer 3&
_razorViewToStringRenderer4 N
;N O
private 
readonly 
QRCodeService &
_qrCodeService' 5
;5 6
public 

HomeHelper 
( &
IRazorViewToStringRenderer 4%
razorViewToStringRenderer5 N
,N O
QRCodeServiceP ]
qrCodeService^ k
)k l
{ 	&
_razorViewToStringRenderer &
=' (%
razorViewToStringRenderer) B
;B C
_qrCodeService 
= 
qrCodeService *
;* +
} 	
public 
async 
Task 
< 
List 
< 
string %
>% &
>& '"
SubmitUploadAttachFile( >
(> ?
	FileModel? H
formDataI Q
,Q R
stringS Y
catZ ]
)] ^
{ 	
Encoding 
. 
RegisterProvider %
(% &%
CodePagesEncodingProvider& ?
.? @
Instance@ H
)H I
;I J
using 
var 
stream 
= 
new "
MemoryStream# /
(/ 0
)0 1
;1 2
await 
formData 
? 
. 
uploadExcelFile +
?+ ,
., -
CopyToAsync- 8
(8 9
stream9 ?
)? @
;@ A

DictionaryBB 
<BB 
stringBB 
,BB 

DictionaryBB )
<BB) *
stringBB* 0
,BB0 1
stringBB2 8
>BB8 9
>BB9 : 
MainExcelColumnsNameBB; O
=BBP Q
ConfigurationReaderBBR e
.BBe f
GetExcelColumnsNameBBf y
(BBy z
$str	BBz �
,
BB� �
$str
BB� �
)
BB� �
;
BB� �
ExcelReaderDD 
XLreaderDD  
=DD! "
newDD# &
ExcelReaderDD' 2
(DD2 3
streamDD3 9
)DD9 :
;DD: ;
XLreaderFF 
.FF 
OpenWorksheetFF "
(FF" #
$strFF# -
)FF- .
;FF. /
ListGG 
<GG 

DictionaryGG 
<GG 
stringGG "
,GG" #
stringGG$ *
>GG* +
>GG+ ,
dataGG- 1
=GG2 3
XLreaderGG4 <
.GG< =
ReadAllLinesGG= I
(GGI J 
MainExcelColumnsNameGGJ ^
)GG^ _
;GG_ `
ListII 
<II 
stringII 
>II 
errorsII 
=II  !
newII" %
(II% &
)II& '
;II' (
ListJJ 
<JJ 
stringJJ 
>JJ 
NoFilesJJ  
=JJ! "
newJJ# &
(JJ& '
)JJ' (
;JJ( )
DateTimeKK 
	TimeStampKK 
=KK  
DateTimeHelperKK! /
.KK/ 0
NphiesDateTimeKK0 >
(KK> ?
)KK? @
;KK@ A
intRR 
rowNumRR 
=RR 
$numRR 
;RR 
trySS 
{TT 
ReportModelUU 
reportModelUU '
=UU( )
newUU* -
ReportModelUU. 9
(UU9 :
)UU: ;
;UU; <
stringVV 
HealthProviderVV %
=VV& '
$strVV( *
;VV* +
stringWW 
LocationWW 
=WW  !
$strWW" $
;WW$ %
stringXX 
ContactPersonXX $
=XX% &
$strXX' )
;XX) *
stringYY 
	ContactNOYY  
=YY! "
$strYY# %
;YY% &
stringZZ 
EmailAddressZZ #
=ZZ$ %
$strZZ& (
;ZZ( )
string[[ 
ContractRefrence[[ '
=[[( )
$str[[* ,
;[[, -
string\\ 
VATNO\\ 
=\\ 
$str\\ !
;\\! "
string]] 
	InvoiceNO]]  
=]]! "
$str]]# %
;]]% &
string^^ 
InvoiceDate^^ "
=^^# $
$str^^% '
;^^' (
string__ 
BillingMonth__ #
=__$ %
$str__& (
;__( )
string`` 
DueDate`` 
=``  
$str``! #
;``# $
stringaa 
SadadBILLIDaa "
=aa# $
$straa% '
;aa' (
stringbb 
CCHINObb 
=bb 
$strbb  "
;bb" #
stringcc 
DHSCodecc 
=cc  
$strcc! #
;cc# $
stringdd 

BatchMonthdd !
=dd" #
$strdd$ &
;dd& '
stringee 
TotalExcVATee "
=ee# $
$stree% '
;ee' (
stringff 
VATff 
=ff 
$strff 
;ff  
stringgg 
TotalWithVATgg #
=gg$ %
$strgg& (
;gg( )
stringhh 
ContractTypehh #
=hh$ %
$strhh& (
;hh( )
stringii 
	ClaimRateii  
=ii! "
$strii# %
;ii% &
stringjj 
SegmentPricejj #
=jj$ %
$strjj& (
;jj( )
stringkk 
InsuranceCOkk "
=kk# $
$strkk% '
;kk' (
stringll 
CRMQuantityll "
=ll# $
$strll% '
;ll' (
stringmm 

Invoicablemm !
=mm" #
$strmm$ &
;mm& '
stringnn 
GroupProvidernn $
=nn% &
$strnn' )
;nn) *
stringoo 
itemoo 
=oo 
$stroo  
;oo  !
stringpp 
Descriptionpp "
=pp# $
$strpp% '
;pp' (
stringqq 
Quantityqq 
=qq  !
$strqq" $
;qq$ %
stringrr 
Raterr 
=rr 
$strrr  
;rr  !
stringss 
Discountss 
=ss  !
$strss" $
;ss$ %
stringtt 
Totaltt 
=tt 
$strtt !
;tt! "
stringuu 
COMMERCIALREGuu $
=uu% &
$struu' )
;uu) *
stringvv 
CONTRACTDATEvv #
=vv$ %
$strvv& (
;vv( )
foreachww 
(ww 

Dictionaryww #
<ww# $
stringww$ *
,ww* +
stringww, 2
>ww2 3
XLrowww4 9
inww: <
dataww= A
)wwA B
{xx 
ifzz 
(zz 
rowNumzz 
==zz !
$numzz" #
)zz# $
{zz% &
HealthProvider{{ &
={{' (
XLrow{{) .
[{{. /
$str{{/ ?
]{{? @
;{{@ A
Location||  
=||! "
XLrow||# (
[||( )
$str||) 3
]||3 4
;||4 5
ContactPerson}} %
=}}& '
XLrow}}( -
[}}- .
$str}}. =
]}}= >
;}}> ?
	ContactNO~~ !
=~~" #
XLrow~~$ )
[~~) *
$str~~* 5
]~~5 6
;~~6 7
EmailAddress $
=% &
XLrow' ,
[, -
$str- ;
]; <
;< =
ContractRefrence
�� (
=
��) *
XLrow
��+ 0
[
��0 1
$str
��1 C
]
��C D
;
��D E
VATNO
�� 
=
�� 
XLrow
��  %
[
��% &
$str
��& -
]
��- .
;
��. /
	InvoiceNO
�� !
=
��" #
XLrow
��$ )
[
��) *
$str
��* 5
]
��5 6
;
��6 7
InvoiceDate
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;
BillingMonth
�� $
=
��% &
XLrow
��' ,
[
��, -
$str
��- ;
]
��; <
;
��< =
DueDate
�� 
=
��  !
XLrow
��" '
[
��' (
$str
��( 1
]
��1 2
;
��2 3
SadadBILLID
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;
CCHINO
�� 
=
��  
XLrow
��! &
[
��& '
$str
��' /
]
��/ 0
;
��0 1
DHSCode
�� 
=
��  !
XLrow
��" '
[
��' (
$str
��( 1
]
��1 2
;
��2 3
TotalExcVAT
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;
VAT
�� 
=
�� 
XLrow
�� #
[
��# $
$str
��$ )
]
��) *
;
��* +
TotalWithVAT
�� $
=
��% &
XLrow
��' ,
[
��, -
$str
��- ;
]
��; <
;
��< =
ContractType
�� $
=
��% &
XLrow
��' ,
[
��, -
$str
��- ;
]
��; <
;
��< =
	ClaimRate
�� !
=
��" #
XLrow
��$ )
[
��) *
$str
��* 5
]
��5 6
;
��6 7
SegmentPrice
�� $
=
��% &
XLrow
��' ,
[
��, -
$str
��- ;
]
��; <
;
��< =
CRMQuantity
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;

Invoicable
�� "
=
��# $
XLrow
��% *
[
��* +
$str
��+ 7
]
��7 8
;
��8 9
GroupProvider
�� %
=
��& '
XLrow
��( -
[
��- .
$str
��. =
]
��= >
;
��> ?
COMMERCIALREG
�� %
=
��& '
XLrow
��( -
[
��- .
$str
��. =
]
��= >
;
��> ?
CONTRACTDATE
�� $
=
��% &
XLrow
��' ,
[
��, -
$str
��- ;
]
��; <
;
��< =

BatchMonth
�� "
=
��# $
XLrow
��% *
[
��* +
$str
��+ 7
]
��7 8
;
��8 9
}
�� 
else
�� 
{
�� 
item
�� 
=
�� 
XLrow
�� $
[
��$ %
$str
��% +
]
��+ ,
;
��, -
Description
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;
Quantity
��  
=
��! "
XLrow
��# (
[
��( )
$str
��) 3
]
��3 4
;
��4 5
Rate
�� 
=
�� 
XLrow
�� $
[
��$ %
$str
��% +
]
��+ ,
;
��, -
Discount
��  
=
��! "
XLrow
��# (
[
��( )
$str
��) 3
]
��3 4
;
��4 5
Total
�� 
=
�� 
XLrow
��  %
[
��% &
$str
��& -
]
��- .
;
��. /
InsuranceCO
�� #
=
��$ %
XLrow
��& +
[
��+ ,
$str
��, 9
]
��9 :
;
��: ;

BatchMonth
�� "
=
��# $
XLrow
��% *
[
��* +
$str
��+ 7
]
��7 8
;
��8 9
}
�� 
if
�� 
(
�� 
rowNum
�� 
==
�� !
$num
��" #
)
��# $
{
�� 
reportModel
�� '
.
��' (
BillingMonth
��( 4
=
��5 6
!
��7 8
string
��8 >
.
��> ?
IsNullOrEmpty
��? L
(
��L M
BillingMonth
��M Y
)
��Y Z
?
��[ \
Convert
��] d
.
��d e

ToDateTime
��e o
(
��o p
BillingMonth
��p |
)
��| }
:
��~ 
null��� �
;��� �
reportModel
�� #
.
��# $
CCHINO
��$ *
=
��+ ,
CCHINO
��- 3
;
��3 4
reportModel
�� #
.
��# $
	ContactNO
��$ -
=
��. /
	ContactNO
��0 9
;
��9 :
reportModel
�� #
.
��# $
ContactPerson
��$ 1
=
��2 3
ContactPerson
��4 A
;
��A B
reportModel
�� #
.
��# $
ContractRefrence
��$ 4
=
��5 6
ContractRefrence
��7 G
;
��G H
reportModel
�� #
.
��# $
DHSCode
��$ +
=
��, -
DHSCode
��. 5
;
��5 6
reportModel
�� #
.
��# $
DueDate
��$ +
=
��, -
!
��. /
string
��/ 5
.
��5 6
IsNullOrEmpty
��6 C
(
��C D
DueDate
��D K
)
��K L
?
��M N
Convert
��O V
.
��V W

ToDateTime
��W a
(
��a b
DueDate
��b i
)
��i j
:
��k l
null
��m q
;
��q r
reportModel
�� #
.
��# $
EmailAddress
��$ 0
=
��1 2
EmailAddress
��3 ?
;
��? @
reportModel
�� #
.
��# $
HealthProvider
��$ 2
=
��3 4
HealthProvider
��5 C
;
��C D
reportModel
�� #
.
��# $
	InvoiceNO
��$ -
=
��. /
	InvoiceNO
��0 9
;
��9 :
reportModel
�� #
.
��# $
InvoiceDate
��$ /
=
��0 1
!
��2 3
string
��3 9
.
��9 :
IsNullOrEmpty
��: G
(
��G H
InvoiceDate
��H S
)
��S T
?
��U V
Convert
��W ^
.
��^ _

ToDateTime
��_ i
(
��i j
InvoiceDate
��j u
)
��u v
:
��w x
null
��y }
;
��} ~
reportModel
�� #
.
��# $
Location
��$ ,
=
��- .
Location
��/ 7
;
��7 8
reportModel
�� #
.
��# $
SadadBILLID
��$ /
=
��0 1
SadadBILLID
��2 =
;
��= >
reportModel
�� #
.
��# $
VATNO
��$ )
=
��* +
VATNO
��, 1
;
��1 2
reportModel
�� #
.
��# $
TotalExcVAT
��$ /
=
��0 1
!
��2 3
string
��3 9
.
��9 :
IsNullOrEmpty
��: G
(
��G H
TotalExcVAT
��H S
)
��S T
?
��U V!
GetDecimalTwoDigits
��W j
(
��j k
TotalExcVAT
��k v
)
��v w
:
��x y
null
��z ~
;
��~ 
reportModel
�� #
.
��# $
	ClaimRate
��$ -
=
��. /
	ClaimRate
��0 9
;
��9 :
reportModel
�� #
.
��# $
ContractType
��$ 0
=
��1 2
ContractType
��3 ?
;
��? @
reportModel
�� #
.
��# $
SegmentPrice
��$ 0
=
��1 2
!
��3 4
string
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
SegmentPrice
��I U
)
��U V
?
��W X!
GetDecimalTwoDigits
��Y l
(
��l m
SegmentPrice
��m y
)
��y z
:
��{ |
null��} �
;��� �
reportModel
�� #
.
��# $
TotalWithVAT
��$ 0
=
��1 2
!
��3 4
string
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
TotalWithVAT
��I U
)
��U V
?
��W X!
GetDecimalTwoDigits
��Y l
(
��l m
TotalWithVAT
��m y
)
��y z
:
��{ |
null��} �
;��� �
reportModel
�� #
.
��# $
VAT
��$ '
=
��( )
!
��* +
string
��+ 1
.
��1 2
IsNullOrEmpty
��2 ?
(
��? @
VAT
��@ C
)
��C D
?
��E F!
GetDecimalTwoDigits
��G Z
(
��Z [
VAT
��[ ^
)
��^ _
:
��` a
null
��b f
;
��f g
reportModel
�� #
.
��# $
CRMQuantity
��$ /
=
��0 1
CRMQuantity
��2 =
;
��= >
reportModel
�� #
.
��# $
GroupProvider
��$ 1
=
��2 3
GroupProvider
��4 A
;
��A B
reportModel
�� #
.
��# $

Invoicable
��$ .
=
��/ 0
(
��1 2
!
��2 3
string
��3 9
.
��9 :
IsNullOrEmpty
��: G
(
��G H

Invoicable
��H R
)
��R S
?
��T U
(
��V W
(
��W X

Invoicable
��X b
.
��b c
ToLower
��c j
(
��j k
)
��k l
==
��m o
$str
��p t
)
��t u
?
��v w
(
��x y
false
��y ~
)
��~ 
:��� �
(��� �
true��� �
)��� �
)��� �
:��� �
true��� �
)��� �
;��� �
reportModel
�� #
.
��# $
TotalInWords
��$ 0
=
��1 2
NumberToWords
��3 @
(
��@ A
TotalWithVAT
��A M
)
��M N
;
��N O
reportModel
�� #
.
��# $
COMMERCIALREG
��$ 1
=
��2 3
COMMERCIALREG
��4 A
;
��A B
reportModel
�� #
.
��# $
CONTRACTDATE
��$ 0
=
��1 2
!
��3 4
string
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
CONTRACTDATE
��I U
)
��U V
?
��W X
Convert
��Y `
.
��` a

ToDateTime
��a k
(
��k l
CONTRACTDATE
��l x
)
��x y
:
��z {
null��| �
;��� �
reportModel
�� #
.
��# $
items
��$ )
=
��* +
new
��, /
	LineItems
��0 9
[
��9 :
$num
��: ;
]
��; <
;
��< =
reportModel
�� #
.
��# $
items
��$ )
[
��) *
$num
��* +
]
��+ ,
=
��- .
new
��/ 2
	LineItems
��3 <
(
��< =
)
��= >
;
��> ?
reportModel
�� #
.
��# $
items
��$ )
[
��) *
$num
��* +
]
��+ ,
=
��- .
new
��/ 2
	LineItems
��3 <
(
��< =
)
��= >
;
��> ?
reportModel
�� #
.
��# $
items
��$ )
[
��) *
$num
��* +
]
��+ ,
=
��- .
new
��/ 2
	LineItems
��3 <
(
��< =
)
��= >
;
��> ?
reportModel
�� #
.
��# $

BatchMonth
��$ .
=
��/ 0

BatchMonth
��1 ;
;
��; <
}
�� 
else
�� 
if
�� 
(
�� 
rowNum
�� "
<=
��# %
$num
��& '
)
��' (
{
�� 
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
item
��4 8
=
��9 :
item
��; ?
;
��? @
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
Description
��4 ?
=
��@ A
Description
��B M
;
��M N
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
Quantity
��4 <
=
��= >
!
��? @
string
��@ F
.
��F G
IsNullOrEmpty
��G T
(
��T U
Quantity
��U ]
)
��] ^
?
��_ `!
GetDecimalTwoDigits
��a t
(
��t u
Quantity
��u }
)
��} ~
:�� �
null��� �
;��� �
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
Rate
��4 8
=
��9 :
!
��; <
string
��< B
.
��B C
IsNullOrEmpty
��C P
(
��P Q
Rate
��Q U
)
��U V
?
��W X!
GetDecimalTwoDigits
��Y l
(
��l m
Rate
��m q
)
��q r
:
��s t
null
��u y
;
��y z
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
Discount
��4 <
=
��= >
!
��? @
string
��@ F
.
��F G
IsNullOrEmpty
��G T
(
��T U
Discount
��U ]
)
��] ^
?
��_ `!
GetDecimalTwoDigits
��a t
(
��t u
Discount
��u }
)
��} ~
:�� �
null��� �
;��� �
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��0 1
$num
��1 2
]
��2 3
.
��3 4
Total
��4 9
=
��: ;
!
��< =
string
��= C
.
��C D
IsNullOrEmpty
��D Q
(
��Q R
Total
��R W
)
��W X
?
��Y Z!
GetDecimalTwoDigits
��[ n
(
��n o
Total
��o t
)
��t u
:
��v w
null
��x |
;
��| }
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��1 2
$num
��3 4
]
��4 5
.
��5 6
InsuranceCO
��6 A
=
��B C
InsuranceCO
��D O
;
��O P
reportModel
�� #
.
��# $
items
��$ )
[
��) *
rowNum
��* 0
-
��1 2
$num
��3 4
]
��4 5
.
��5 6

BatchMonth
��6 @
=
��A B

BatchMonth
��C M
;
��M N
}
�� 
rowNum
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
Convert
�� 
.
�� 
	ToBoolean
�� %
(
��% &
reportModel
��& 1
?
��1 2
.
��2 3

Invoicable
��3 =
)
��= >
)
��> ?
{
�� 
if
�� 
(
��  
ValidateModel
��  -
(
��- .
cat
��. 1
,
��1 2
reportModel
��3 >
)
��> ?
)
��? @
{
�� 
QRModel
��  '
model
��( -
=
��. /
new
��0 3
(
��3 4
)
��4 5
{
��  !

SellerName
��$ .
=
��/ 0
$str
��1 Z
,
��Z [
InvoiceAmount
��$ 1
=
��2 3!
GetDecimalTwoDigits
��4 G
(
��G H
TotalWithVAT
��H T
)
��T U
.
��U V
ToString
��V ^
(
��^ _
)
��_ `
,
��` a
	VatAmount
��$ -
=
��. /!
GetDecimalTwoDigits
��0 C
(
��C D
VAT
��D G
)
��G H
.
��H I
ToString
��I Q
(
��Q R
)
��R S
,
��S T
	VatNumber
��$ -
=
��. /
$str
��0 A
,
��A B
	TimeStamp
��$ -
=
��. /
InvoiceDate
��0 ;
,
��; <
}
��  !
;
��! "
var
��  #
stringeBase64
��$ 1
=
��2 3
_qrCodeService
��4 B
.
��B C
GenerateQRCode
��C Q
(
��Q R
model
��R W
)
��W X
;
��X Y
var
��  #
qrCodeImageBase64
��$ 5
=
��6 7
GenerateQrCode
��8 F
(
��F G
stringeBase64
��G T
)
��T U
;
��U V
reportModel
��  +
.
��+ ,
QrCodeImageBase64
��, =
=
��> ?
qrCodeImageBase64
��@ Q
;
��Q R
string
��  &
TaxInvoiceString
��' 7
=
��8 9
$str
��: <
;
��< =
if
��  "
(
��# $
cat
��$ '
==
��( *
$str
��+ 0
)
��0 1
{
��  !
TaxInvoiceString
��$ 4
=
��5 6
await
��7 <(
_razorViewToStringRenderer
��= W
.
��W X%
RenderViewToStringAsync
��X o
(
��o p
$str��p �
,��� �
reportModel��� �
)��� �
;��� �
}
��  !
else
��  $
{
��  !
TaxInvoiceString
��$ 4
=
��5 6
await
��7 <(
_razorViewToStringRenderer
��= W
.
��W X%
RenderViewToStringAsync
��X o
(
��o p
$str��p �
,��� �
reportModel��� �
)��� �
;��� �
}
��  !
var
��  #
fileName
��$ ,
=
��- .
	InvoiceNO
��/ 8
;
��8 9
string
��  &

dateFormat
��' 1
=
��2 3
	TimeStamp
��4 =
.
��= >
ToString
��> F
(
��F G
$str
��G P
)
��P Q
;
��Q R
string
��  &
path
��' +
=
��, -
$str
��. [
+
��\ ]

dateFormat
��^ h
+
��i j
$str
��k n
+
��o p
	TimeStamp
��q z
.
��z {
ToString��{ �
(��� �
$str��� �
)��� �
+��� �
$str��� �
+��� �
fileName��� �
+��� �
$str��� �
;��� �
try
��  #
{
��  !
await
��$ )$
PFDFileGeneratorHelper
��* @
.
��@ A%
ConvertHtmlToPdfForUFAC
��A X
(
��X Y
CCHINO
��Y _
,
��_ `
path
��a e
,
��e f
TaxInvoiceString
��g w
)
��w x
;
��x y
}
��  !
catch
��  %
(
��& '
	Exception
��' 0
ex
��1 3
)
��3 4
{
��  !
string
��$ *
error
��+ 0
=
��1 2
$str
��3 5
;
��5 6
if
��$ &
(
��' (
!
��( )
string
��) /
.
��/ 0
IsNullOrEmpty
��0 =
(
��= >
CCHINO
��> D
)
��D E
)
��E F
{
��$ %
error
��( -
=
��. /
CCHINO
��0 6
;
��6 7
}
��$ %
if
��$ &
(
��' (
!
��( )
string
��) /
.
��/ 0
IsNullOrEmpty
��0 =
(
��= >
	InvoiceNO
��> G
)
��G H
)
��H I
{
��$ %
error
��( -
+=
��. 0
$str
��1 5
+
��6 7
	InvoiceNO
��8 A
;
��A B
}
��$ %
error
��$ )
+=
��* ,
$str
��- 0
+
��1 2
ex
��3 5
?
��5 6
.
��6 7
Message
��7 >
;
��> ?
errors
��$ *
.
��* +
Add
��+ .
(
��. /
error
��/ 4
)
��4 5
;
��5 6
}
��  !
}
�� 
else
��  
{
�� 
string
��  &
NoFile
��' -
=
��. /
$str
��0 2
;
��2 3
if
��  "
(
��# $
!
��$ %
string
��% +
.
��+ ,
IsNullOrEmpty
��, 9
(
��9 :
CCHINO
��: @
)
��@ A
)
��A B
{
��  !
NoFile
��$ *
=
��+ ,
CCHINO
��- 3
;
��3 4
}
��  !
if
��  "
(
��# $
!
��$ %
string
��% +
.
��+ ,
IsNullOrEmpty
��, 9
(
��9 :
	InvoiceNO
��: C
)
��C D
)
��D E
{
��  !
NoFile
��$ *
+=
��+ -
$str
��. 2
+
��3 4
	InvoiceNO
��5 >
;
��> ?
}
��  !
NoFiles
��  '
.
��' (
Add
��( +
(
��+ ,
NoFile
��, 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
errors
�� 
.
�� 
Add
�� "
(
��" #
ex
��# %
.
��% &
Message
��& -
)
��- .
;
��. /
}
�� 
try
�� 
{
�� 
if
�� 
(
�� 
NoFiles
�� 
!=
��  "
null
��# '
&&
��( *
NoFiles
��+ 2
?
��2 3
.
��3 4
Count
��4 9
>
��: ;
$num
��< =
)
��= >
{
�� 
string
�� 
fileName
�� '
=
��( )
$str
��* 1
;
��1 2
string
�� 

dateFormat
�� )
=
��* +
	TimeStamp
��, 5
.
��5 6
ToString
��6 >
(
��> ?
$str
��? H
)
��H I
;
��I J
string
�� 
path
�� #
=
��$ %
$str��& �
+��� �

dateFormat��� �
+��� �
$str��� �
+��� �
	TimeStamp��� �
.��� �
ToString��� �
(��� �
$str��� �
)��� �
+��� �
$str��� �
+��� �
fileName��� �
+��� �
$str��� �
;��� �
try
�� 
{
�� 
string
�� "
str
��# &
=
��' (
$str
��) +
;
��+ ,
foreach
�� #
(
��$ %
var
��% (
item
��) -
in
��. 0
NoFiles
��1 8
??
��9 ;
[
��< =
]
��= >
)
��> ?
{
�� 
str
��  #
+=
��$ &
item
��' +
+
��, -
$str
��. 5
;
��5 6
}
�� 
await
�� !$
PFDFileGeneratorHelper
��" 8
.
��8 9%
ConvertHtmlToPdfForUFAC
��9 P
(
��P Q
$str
��Q W
,
��W X
path
��Y ]
,
��] ^
str
��_ b
)
��b c
;
��c d
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
errors
�� 
.
�� 
Add
�� 
(
�� 
ex
�� !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
if
�� 
(
�� 
errors
�� 
!=
�� 
null
�� 
&&
�� !
errors
��" (
?
��( )
.
��) *
Count
��* /
>
��0 1
$num
��2 3
)
��3 4
{
�� 
string
�� 
fileName
�� 
=
��  !
$str
��" *
;
��* +
string
�� 

dateFormat
�� !
=
��" #
	TimeStamp
��$ -
.
��- .
ToString
��. 6
(
��6 7
$str
��7 @
)
��@ A
;
��A B
string
�� 
path
�� 
=
�� 
$str�� �
+��� �

dateFormat��� �
+��� �
$str��� �
+��� �
	TimeStamp��� �
.��� �
ToString��� �
(��� �
$str��� �
)��� �
+��� �
$str��� �
+��� �
fileName��� �
+��� �
$str��� �
;��� �
try
�� 
{
�� 
string
�� 
str
�� 
=
��  
$str
��! #
;
��# $
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
errors
��) /
??
��0 2
[
��3 4
]
��4 5
)
��5 6
{
�� 
str
�� 
+=
�� 
item
�� #
+
��$ %
$str
��& -
;
��- .
}
�� 
await
�� $
PFDFileGeneratorHelper
�� 0
.
��0 1%
ConvertHtmlToPdfForUFAC
��1 H
(
��H I
$str
��I O
,
��O P
path
��Q U
,
��U V
str
��W Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
}
�� 
}
�� 
return
�� 
errors
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
ValidateModel
�� )
(
��) *
string
��* 0
cat
��1 4
,
��4 5
ReportModel
��6 A
reportModel
��B M
)
��M N
{
�� 	
var
�� 
valid
�� 
=
�� 
(
�� 
!
�� 
string
��  
.
��  !
IsNullOrEmpty
��! .
(
��. /
reportModel
��/ :
?
��: ;
.
��; <
HealthProvider
��< J
)
��J K
&&
��L N
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
Location
��7 ?
)
��? @
&&
��A C
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
ContactPerson
��7 D
)
��D E
&&
��F H
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
	ContactNO
��7 @
)
��@ A
&&
��B D
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
EmailAddress
��7 C
)
��C D
&&
��E G
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
ContractRefrence
��7 G
)
��G H
&&
��I K
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
VATNO
��7 <
)
��< =
&&
��> @
reportModel
�� 
?
��  
.
��  !
InvoiceDate
��! ,
!=
��- /
null
��0 4
&&
��5 7
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
	InvoiceNO
��7 @
)
��@ A
&&
��B D
reportModel
�� 
?
��  
.
��  !
BillingMonth
��! -
!=
��. 0
null
��1 5
&&
��6 8
reportModel
�� 
?
��  
.
��  !
DueDate
��! (
!=
��) +
null
��, 0
&&
��1 3
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
CCHINO
��7 =
)
��= >
&&
��? A
reportModel
�� 
?
��  
.
��  !
TotalExcVAT
��! ,
!=
��- /
null
��0 4
&&
��5 7
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
ContractType
��7 C
)
��C D
&&
��E G
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
	ClaimRate
��7 @
)
��@ A
&&
��B D
reportModel
�� 
?
��  
.
��  !
SegmentPrice
��! -
!=
��. 0
null
��1 5
)
�� 
;
�� 
if
�� 
(
�� 
cat
�� 
==
�� 
$str
�� 
)
�� 
{
�� 
valid
�� 
&=
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
reportModel
��* 5
?
��5 6
.
��6 7
DHSCode
��7 >
)
��> ?
)
��? @
;
��@ A
}
�� 
return
�� 
valid
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
decimal
�� !
GetDecimalTwoDigits
�� 1
(
��1 2
decimal
��2 9
?
��9 :
value
��; @
)
��@ A
{
�� 	
if
�� 
(
�� 
value
�� 
==
�� 
null
�� 
)
�� 
value
�� $
=
��% &
$num
��' (
;
��( )
return
�� 
Convert
�� 
.
�� 
	ToDecimal
�� $
(
��$ %
string
��% +
.
��+ ,
Format
��, 2
(
��2 3
CultureInfo
��3 >
.
��> ?
CurrentCulture
��? M
,
��M N
$str
��O Y
,
��Y Z
value
��[ `
)
��` a
,
��a b
CultureInfo
��c n
.
��n o
CurrentCulture
��o }
)
��} ~
;
��~ 
}
�� 	
public
�� 
static
�� 
decimal
�� !
GetDecimalTwoDigits
�� 1
(
��1 2
string
��2 8
value
��9 >
)
��> ?
{
�� 	
if
�� 
(
�� 
value
�� 
==
�� 
null
�� 
)
�� 
value
�� $
=
��% &
$str
��' *
;
��* +
return
�� 
Convert
�� 
.
�� 
	ToDecimal
�� $
(
��$ %
Convert
��% ,
.
��, -
	ToDecimal
��- 6
(
��6 7
string
��7 =
.
��= >
Format
��> D
(
��D E
$str
��E O
,
��O P
value
��Q V
)
��V W
)
��W X
.
��X Y
ToString
��Y a
(
��a b
$str
��b e
)
��e f
)
��f g
;
��g h
}
�� 	
public
�� 
static
�� 
string
�� 
NumberToWords
�� *
(
��* +
string
��+ 1
value
��2 7
)
��7 8
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
value
��& +
)
��+ ,
)
��, -
{
�� 
decimal
�� 
doubleNumber
�� $
=
��% &
Convert
��' .
.
��. /
	ToDecimal
��/ 8
(
��8 9
Convert
��9 @
.
��@ A
	ToDecimal
��A J
(
��J K
string
��K Q
.
��Q R
Format
��R X
(
��X Y
$str
��Y c
,
��c d
value
��e j
)
��j k
)
��k l
.
��l m
ToString
��m u
(
��u v
$str
��v y
)
��y z
)
��z {
;
��{ |
var
�� !
beforeFloatingPoint
�� '
=
��( )
(
��* +
int
��+ .
)
��. /
Math
��/ 3
.
��3 4
Floor
��4 9
(
��9 :
doubleNumber
��: F
)
��F G
;
��G H
var
�� %
beforeFloatingPointWord
�� +
=
��, -
$"
��. 0
{
��0 1
NumberToWords
��1 >
(
��> ?!
beforeFloatingPoint
��? R
)
��R S
}
��S T
"
��T U
;
��U V
var
�� $
afterFloatingPointWord
�� *
=
��+ ,
$"
�� 
{
�� 
SmallNumberToWord
�� (
(
��( )
(
��) *
int
��* -
)
��- .
(
��. /
(
��/ 0
doubleNumber
��0 <
-
��= >!
beforeFloatingPoint
��? R
)
��R S
*
��T U
$num
��V Y
)
��Y Z
,
��Z [
$str
��\ ^
)
��^ _
}
��_ `
"
��` a
;
��a b
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *$
afterFloatingPointWord
��* @
)
��@ A
)
��A B
{
�� 
return
�� 
$"
�� 
{
�� %
beforeFloatingPointWord
�� 5
}
��5 6
$str
��6 ;
{
��; <$
afterFloatingPointWord
��< R
}
��R S
"
��S T
;
��T U
}
�� 
else
�� 
{
�� 
return
�� 
$"
�� 
{
�� %
beforeFloatingPointWord
�� 5
}
��5 6
"
��6 7
;
��7 8
}
�� 
}
�� 
return
�� 
$str
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
string
�� 
NumberToWords
�� +
(
��+ ,
int
��, /
number
��0 6
)
��6 7
{
�� 	
if
�� 
(
�� 
number
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
number
�� 
<
�� 
$num
�� 
)
�� 
return
�� 
$str
�� 
+
��  !
NumberToWords
��" /
(
��/ 0
Math
��0 4
.
��4 5
Abs
��5 8
(
��8 9
number
��9 ?
)
��? @
)
��@ A
;
��A B
var
�� 
words
�� 
=
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
number
�� 
/
�� 
$num
�� #
>
��$ %
$num
��& '
)
��' (
{
�� 
words
�� 
+=
�� 
NumberToWords
�� &
(
��& '
number
��' -
/
��. /
$num
��0 :
)
��: ;
+
��< =
$str
��> I
;
��I J
number
�� 
%=
�� 
$num
�� $
;
��$ %
}
�� 
if
�� 
(
�� 
number
�� 
/
�� 
$num
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
words
�� 
+=
�� 
NumberToWords
�� &
(
��& '
number
��' -
/
��. /
$num
��0 7
)
��7 8
+
��9 :
$str
��; F
;
��F G
number
�� 
%=
�� 
$num
�� !
;
��! "
}
�� 
if
�� 
(
�� 
number
�� 
/
�� 
$num
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
words
�� 
+=
�� 
NumberToWords
�� &
(
��& '
number
��' -
/
��. /
$num
��0 4
)
��4 5
+
��6 7
$str
��8 D
;
��D E
number
�� 
%=
�� 
$num
�� 
;
�� 
}
�� 
if
�� 
(
�� 
number
�� 
/
�� 
$num
�� 
>
�� 
$num
��  
)
��  !
{
�� 
words
�� 
+=
�� 
NumberToWords
�� &
(
��& '
number
��' -
/
��. /
$num
��0 3
)
��3 4
+
��5 6
$str
��7 B
;
��B C
number
�� 
%=
�� 
$num
�� 
;
�� 
}
�� 
words
�� 
=
�� 
SmallNumberToWord
�� %
(
��% &
number
��& ,
,
��, -
words
��. 3
)
��3 4
;
��4 5
return
�� 
words
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
string
�� 
SmallNumberToWord
�� /
(
��/ 0
int
��0 3
number
��4 :
,
��: ;
string
��< B
words
��C H
)
��H I
{
�� 	
if
�� 
(
�� 
number
�� 
<=
�� 
$num
�� 
)
�� 
return
�� #
words
��$ )
;
��) *
if
�� 
(
�� 
words
�� 
!=
�� 
$str
�� 
)
�� 
words
�� 
+=
�� 
$str
�� 
;
�� 
var
�� 
unitsMap
�� 
=
�� 
new
�� 
[
�� 
]
��  
{
��! "
$str
��# )
,
��) *
$str
��+ 0
,
��0 1
$str
��2 7
,
��7 8
$str
��9 @
,
��@ A
$str
��B H
,
��H I
$str
��J P
,
��P Q
$str
��R W
,
��W X
$str
��Y `
,
��` a
$str
��b i
,
��i j
$str
��k q
,
��q r
$str
��s x
,
��x y
$str��z �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
}��� �
;��� �
var
�� 
tensMap
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
��  !
$str
��" (
,
��( )
$str
��* /
,
��/ 0
$str
��1 9
,
��9 :
$str
��; C
,
��C D
$str
��E L
,
��L M
$str
��N U
,
��U V
$str
��W ^
,
��^ _
$str
��` i
,
��i j
$str
��k s
,
��s t
$str
��u }
}
��~ 
;�� �
if
�� 
(
�� 
number
�� 
<
�� 
$num
�� 
)
�� 
words
�� 
+=
�� 
unitsMap
�� !
[
��! "
number
��" (
]
��( )
;
��) *
else
�� 
{
�� 
words
�� 
+=
�� 
tensMap
��  
[
��  !
number
��! '
/
��( )
$num
��* ,
]
��, -
;
��- .
if
�� 
(
�� 
(
�� 
number
�� 
%
�� 
$num
��  
)
��  !
>
��" #
$num
��$ %
)
��% &
words
�� 
+=
�� 
$str
��  
+
��! "
unitsMap
��# +
[
��+ ,
number
��, 2
%
��3 4
$num
��5 7
]
��7 8
;
��8 9
}
�� 
return
�� 
words
�� 
;
�� 
}
�� 	
public
�� 
class
�� 
	FileModel
�� 
{
�� 	
public
�� 
	IFormFile
�� 
uploadExcelFile
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
List
�� 
<
�� 
string
�� 
>
�� 
ResultMessage
��  -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
bool
�� 
IsFileUploaded
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
class
�� 
ExcelException
�� #
:
��$ %
	Exception
��& /
{
�� 	
public
�� 
ExcelException
�� !
(
��! "
)
��" #
{
�� 
}
�� 
public
�� 
ExcelException
�� !
(
��! "
string
��" (
message
��) 0
)
��0 1
:
��2 3
base
��4 8
(
��8 9
message
��9 @
)
��@ A
{
�� 
}
�� 
public
�� 
ExcelException
�� !
(
��! "
string
��" (
message
��) 0
,
��0 1
	Exception
��2 ;
innerException
��< J
)
��J K
:
��L M
base
��N R
(
��R S
message
��S Z
,
��Z [
innerException
��\ j
)
��j k
{
�� 
}
�� 
	protected
�� 
ExcelException
�� $
(
��$ %
SerializationInfo
��% 6
info
��7 ;
,
��; <
StreamingContext
��= M
context
��N U
)
��U V
:
��W X
base
��Y ]
(
��] ^
info
��^ b
,
��b c
context
��d k
)
��k l
{
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
GetValueFromTable
�� .
(
��. /
DataRow
��/ 6
dr
��7 9
,
��9 :
string
��; A
key
��B E
,
��E F

Dictionary
��G Q
<
��Q R
string
��R X
,
��X Y

Dictionary
��Z d
<
��d e
string
��e k
,
��k l
string
��m s
>
��s t
>
��t u
ExcelColumnsName��v �
)��� �
{
�� 	
string
�� 
value
�� 
=
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
dr
�� 
!=
�� 
null
�� 
&&
�� 
ExcelColumnsName
�� .
?
��. /
.
��/ 0
Count
��0 5
>
��6 7
$num
��8 9
)
��9 :
{
�� 
var
�� 
selectedKey
�� 
=
��  !
ExcelColumnsName
��" 2
[
��2 3
key
��3 6
]
��6 7
.
��7 8
Select
��8 >
(
��> ?
a
��? @
=>
��A C
a
��D E
.
��E F
Value
��F K
)
��K L
.
��L M
FirstOrDefault
��M [
(
��[ \
)
��\ ]
;
��] ^
value
�� 
=
�� 
dr
�� 
[
�� 
selectedKey
�� &
]
��& '
.
��' (
ToString
��( 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
return
�� 
value
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
GenerateQrCode
�� +
(
��+ ,
string
��, 2

qrCodeData
��3 =
)
��= >
{
�� 	
using
�� 
(
�� 
var
�� 
qrGenerator
�� "
=
��# $
new
��% (
QRCodeGenerator
��) 8
(
��8 9
)
��9 :
)
��: ;
{
�� 
var
�� 
qrCodeDataObj
�� !
=
��" #
qrGenerator
��$ /
.
��/ 0
CreateQrCode
��0 <
(
��< =

qrCodeData
��= G
,
��G H
QRCodeGenerator
��I X
.
��X Y
ECCLevel
��Y a
.
��a b
Q
��b c
)
��c d
;
��d e
var
�� 
qrCode
�� 
=
�� 
new
��  
QRCode
��! '
(
��' (
qrCodeDataObj
��( 5
)
��5 6
;
��6 7
using
�� 
(
�� 
var
�� 
qrCodeImage
�� &
=
��' (
qrCode
��) /
.
��/ 0

GetGraphic
��0 :
(
��: ;
$num
��; =
)
��= >
)
��> ?
{
�� 
using
�� 
(
�� 
var
�� 
ms
�� !
=
��" #
new
��$ '
MemoryStream
��( 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
qrCodeImage
�� #
.
��# $
Save
��$ (
(
��( )
ms
��) +
,
��+ ,
System
��- 3
.
��3 4
Drawing
��4 ;
.
��; <
Imaging
��< C
.
��C D
ImageFormat
��D O
.
��O P
Png
��P S
)
��S T
;
��T U
return
�� 
Convert
�� &
.
��& '
ToBase64String
��' 5
(
��5 6
ms
��6 8
.
��8 9
ToArray
��9 @
(
��@ A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
public�� 
class
�� 
EmailService
�� 
{
�� 
public
�� 
bool
�� 
	SendEmail
�� 
(
�� 
string
�� $
toEmail
��% ,
,
��, -
string
��. 4
subject
��5 <
,
��< =
string
��> D
pdfFilePath
��E P
)
��P Q
{
�� 	
string
�� 
htmlContent
�� 
=
��  
$str
��! 
;
�� 
try
�� 
{
�� 

SmtpClient
�� 
client
�� !
=
��" #
new
��$ '

SmtpClient
��( 2
(
��2 3
$str
��3 G
,
��G H
$num
��I K
)
��K L
{
�� 
Credentials
�� 
=
��  !
new
��" %
NetworkCredential
��& 7
(
��7 8
$str
��8 P
,
��P Q
$str
��R d
)
��d e
,
��e f
	EnableSsl
�� 
=
�� 
true
��  $
}
�� 
;
�� 
MailMessage
�� 
mailMessage
�� '
=
��( )
new
��* -
MailMessage
��. 9
{
�� 
From
�� 
=
�� 
new
�� 
MailAddress
�� *
(
��* +
$str
��+ C
)
��C D
,
��D E
Subject
�� 
=
�� 
subject
�� %
,
��% &
Body
�� 
=
�� 
htmlContent
�� &
,
��& '

IsBodyHtml
�� 
=
��  
true
��! %
}
�� 
;
�� 
mailMessage
�� 
.
�� 
To
�� 
.
�� 
Add
�� "
(
��" #
toEmail
��# *
)
��* +
;
��+ ,

Attachment
�� 
pdfAttachment
�� (
=
��) *
new
��+ .

Attachment
��/ 9
(
��9 :
pdfFilePath
��: E
)
��E F
;
��F G
mailMessage
�� 
.
�� 
Attachments
�� '
.
��' (
Add
��( +
(
��+ ,
pdfAttachment
��, 9
)
��9 :
;
��: ;
client
�� 
.
�� 
Send
�� 
(
�� 
mailMessage
�� '
)
��' (
;
��( )
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
lC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\DateTimeHelper.cs
	namespace 	

GenerateQR
 
. 
Helpers 
{ 
public 

static 
class 
DateTimeHelper &
{ 
public 
static 
DateTime 
GetKSADateTime -
(- .
). /
{		 	
TimeZoneInfo

 
KSATimeZone

 $
=

% &
null

' +
;

+ ,
if 
( 
RuntimeInformation "
." #
IsOSPlatform# /
(/ 0

OSPlatform0 :
.: ;
Windows; B
)B C
)C D
{ 
KSATimeZone 
= 
TimeZoneInfo *
.* +"
FindSystemTimeZoneById+ A
(A B
$strB V
)V W
;W X
} 
else 
if 
( 
RuntimeInformation '
.' (
IsOSPlatform( 4
(4 5

OSPlatform5 ?
.? @
Linux@ E
)E F
)F G
{ 
KSATimeZone 
= 
TimeZoneInfo *
.* +"
FindSystemTimeZoneById+ A
(A B
$strB O
)O P
;P Q
} 
DateTimeOffset 
original #
=$ %
DateTime& .
.. /
UtcNow/ 5
;5 6
DateTimeOffset 
cetTime "
=# $
TimeZoneInfo% 1
.1 2
ConvertTime2 =
(= >
original> F
,F G
KSATimeZoneH S
)S T
;T U
return 
cetTime 
. 
DateTime #
;# $
} 	
public 
static 
string 
GetKSAStrDate *
(* +
)+ ,
{ 	
DateTimeOffset 
dateTime #
=$ %
GetKSADateTime& 4
(4 5
)5 6
;6 7
var 
strDateTime 
= 
dateTime &
.& '
ToString' /
(/ 0
$str0 E
,E F
CultureInfoG R
.R S
InvariantCultureS c
)c d
;d e
return 
strDateTime 
; 
} 	
public 
static 
DateTime 
NphiesDateTime -
(- .
). /
{ 	
DateTime   
dateTime   
=   
GetKSADateTime    .
(  . /
)  / 0
;  0 1
var!! 
strDateTime!! 
=!! 
dateTime!! &
.!!& '
ToString!!' /
(!!/ 0
$str!!0 E
,!!E F
CultureInfo!!G R
.!!R S
InvariantCulture!!S c
)!!c d
;!!d e
return"" 
DateTime"" 
."" 
Parse"" !
(""! "
strDateTime""" -
,""- .
CultureInfo""/ :
."": ;
InvariantCulture""; K
)""K L
;""L M
}## 	
}$$ 
}%% �D
iC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\ExcelReader.cs
	namespace 	

GenerateQR
 
. 
Helpers 
{ 
public 

class 
ExcelReader 
{ 

XLWorkbook 

xlWorkBook 
; 
IXLWorksheet		 
xlWorkSheet		  
;		  !
public

 
ExcelReader

 
(

 
string

 !
FileName

" *
)

* +
{ 	

xlWorkBook 
= 
new 

XLWorkbook '
(' (
FileName( 0
)0 1
;1 2
} 	
public 
ExcelReader 
( 
Stream !
stream" (
)( )
{ 	

xlWorkBook 
= 
new 

XLWorkbook '
(' (
stream( .
). /
;/ 0
} 	
public 
void 
OpenWorksheet !
(! "
string" (
	SheetName) 2
)2 3
{ 	
if 
( 
! 

xlWorkBook 
. 

Worksheets &
.& '
TryGetWorksheet' 6
(6 7
	SheetName7 @
,@ A
outB E
xlWorkSheetF Q
)Q R
)R S
{ 
throw 
new 
	Exception #
(# $
$str$ >
)> ?
;? @
} 
} 	
public 
string 
Read 
( 
int 
row "
," #
int$ '
column( .
,. /
bool0 4
DTtype5 ;
); <
{ 	
string 
value 
= 
$str 
; 
value"" 
="" 
xlWorkSheet"" #
.""# $
Cell""$ (
(""( )
row"") ,
,"", -
column"". 4
)""4 5
.""5 6
GetFormattedString""6 H
(""H I
)""I J
;""J K
return## 
value## 
;## 
}$$ 	
public&& 

Dictionary&& 
<&& 
string&&  
,&&  !
string&&" (
>&&( )
ReadLine&&* 2
(&&2 3
int&&3 6
row&&7 :
,&&: ;

Dictionary&&< F
<&&F G
string&&G M
,&&M N
int&&O R
>&&R S
headerColumns&&T a
,&&a b

Dictionary&&c m
<&&m n
string&&n t
,&&t u

Dictionary	&&v �
<
&&� �
string
&&� �
,
&&� �
string
&&� �
>
&&� �
>
&&� �"
MainExcelColumnsName
&&� �
)
&&� �
{'' 	

Dictionary(( 
<(( 
string(( 
,(( 
string(( %
>((% &
XLRow((' ,
=((- .
new((/ 2

Dictionary((3 =
<((= >
string((> D
,((D E
string((F L
>((L M
(((M N
)((N O
;((O P
bool** 
nullRow** 
=** 
true** 
;**  
foreach++ 
(++ 
string++ 
key++ 
in++  "
headerColumns++# 0
.++0 1
Keys++1 5
)++5 6
{,, 
int-- 
column-- 
=-- 
headerColumns-- *
[--* +
key--+ .
]--. /
;--/ 0
bool.. 
DTtype.. 
=.. 
false.. #
;..# $
if// 
(//  
MainExcelColumnsName// (
.//( )
Keys//) -
.//- .
Contains//. 6
(//6 7
key//7 :
)//: ;
&&//< > 
MainExcelColumnsName//? S
[//S T
key//T W
]//W X
[//X Y
$str//Y _
]//_ `
==//a c
$str//d n
)//n o
DTtype00 
=00 
true00 !
;00! "
string11 
value11 
=11 
Read11 #
(11# $
row11$ '
,11' (
column11) /
,11/ 0
DTtype111 7
)117 8
;118 9
if22 
(22 
!22 
string22 
.22 
IsNullOrEmpty22 )
(22) *
value22* /
)22/ 0
)220 1
{33 
nullRow44 
=44 
false44 #
;44# $
}55 
XLRow66 
.66 
Add66 
(66 
key66 
,66 
value66 $
)66$ %
;66% &
}77 
if88 
(88 
nullRow88 
)88 
return99 
null99 
;99 
return:: 
XLRow:: 
;:: 
};; 	
public== 
List== 
<== 

Dictionary== 
<== 
string== %
,==% &
string==' -
>==- .
>==. /
ReadAllLines==0 <
(==< =

Dictionary=== G
<==G H
string==H N
,==N O

Dictionary==P Z
<==Z [
string==[ a
,==a b
string==c i
>==i j
>==j k!
MainExcelColumnsName	==l �
)
==� �
{>> 	
List?? 
<?? 

Dictionary?? 
<?? 
string?? "
,??" #
string??$ *
>??* +
>??+ ,
XLRows??- 3
=??4 5
new??6 9
List??: >
<??> ?

Dictionary??? I
<??I J
string??J P
,??P Q
string??R X
>??X Y
>??Y Z
(??Z [
)??[ \
;??\ ]
int@@ 
row@@ 
=@@ 
$num@@ 
,@@ 
column@@ 
=@@  !
$num@@" #
;@@# $

DictionaryAA 
<AA 
stringAA 
,AA 
intAA "
>AA" #
headerColumnsAA$ 1
=AA2 3

ReadHeaderAA4 >
(AA> ?
rowAA? B
,AAB C
columnAAD J
)AAJ K
;AAK L
rowBB 
++BB 
;BB 
whileCC 
(CC 
trueCC 
)CC 
{DD 

DictionaryEE 
<EE 
stringEE !
,EE! "
stringEE# )
>EE) *
XLRowEE+ 0
=EE1 2
ReadLineEE3 ;
(EE; <
rowEE< ?
,EE? @
headerColumnsEEA N
,EEN O 
MainExcelColumnsNameEEP d
)EEd e
;EEe f
ifFF 
(FF 
XLRowFF 
isFF 
nullFF !
)FF! "
{GG 
breakHH 
;HH 
}II 
XLRowsJJ 
.JJ 
AddJJ 
(JJ 
XLRowJJ  
)JJ  !
;JJ! "
rowKK 
++KK 
;KK 
}LL 
returnMM 
XLRowsMM 
;MM 
}NN 	
publicPP 

DictionaryPP 
<PP 
stringPP  
,PP  !
intPP" %
>PP% &

ReadHeaderPP' 1
(PP1 2
intPP2 5
rowPP6 9
,PP9 :
intPP; >
columnPP? E
)PPE F
{QQ 	

DictionaryRR 
<RR 
stringRR 
,RR 
intRR "
>RR" #
headerColumnsRR$ 1
=RR2 3
newRR4 7

DictionaryRR8 B
<RRB C
stringRRC I
,RRI J
intRRK N
>RRN O
(RRO P
)RRP Q
;RRQ R
stringSS 
valueSS 
=SS 
ReadSS 
(SS  
rowSS  #
,SS# $
columnSS% +
,SS+ ,
falseSS- 2
)SS2 3
;SS3 4
whileTT 
(TT 
trueTT 
)TT 
{UU 
ifVV 
(VV 
stringVV 
.VV 
IsNullOrEmptyVV (
(VV( )
valueVV) .
)VV. /
)VV/ 0
breakWW 
;WW 
headerColumnsXX 
.XX 
AddXX !
(XX! "
valueXX" '
,XX' (
columnXX) /
)XX/ 0
;XX0 1
columnYY 
++YY 
;YY 
valueZZ 
=ZZ 
ReadZZ 
(ZZ 
rowZZ  
,ZZ  !
columnZZ" (
,ZZ( )
falseZZ* /
)ZZ/ 0
;ZZ0 1
}[[ 
return\\ 
headerColumns\\  
;\\  !
}]] 	
}`` 
}aa �?
qC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Helpers\ConfigurationReader.cs
	namespace 	

GenerateQR
 
. 
Helpers 
{ 
public 

static 
class 
ConfigurationReader +
{ 
private 
static 
IConfigurationRoot )
_configuration* 8
;8 9
public		 
static		 
void		  
SetConfigurationRoot		 /
(		/ 0
IConfigurationRoot		0 B
configuration		C P
)		P Q
{

 	
_configuration 
= 
configuration *
;* +
} 	
public 
static 
string 
GetConfigValue +
(+ ,
string, 2
Key3 6
,6 7
string8 >
element? F
)F G
{ 	
return 
_configuration !
.! "

GetSection" ,
(, -
Key- 0
)0 1
.1 2

GetSection2 <
(< =
element= D
)D E
.E F
ValueF K
;K L
} 	
public 
static 
string 
GetConfigValue +
(+ ,
string, 2
Key3 6
)6 7
{ 	
return 
_configuration !
.! "

GetSection" ,
(, -
Key- 0
)0 1
?1 2
.2 3
Value3 8
;8 9
} 	
public 
static 
string (
GetConfigurationFromJsonFile 9
(9 :
string: @
FileNameA I
,I J
stringK Q
elementR Y
)Y Z
{ 	
using 
StreamReader 
r  
=! "
new# &
(& '
$str' 7
+8 9
FileName: B
+C D
$strE L
)L M
;M N
string 
json 
= 
r 
. 
	ReadToEnd %
(% &
)& '
;' (

Dictionary 
< 
string 
, 
object %
>% &
items' ,
=- .
JsonConvert/ :
.: ;
DeserializeObject; L
<L M

DictionaryM W
<W X
stringX ^
,^ _
object` f
>f g
>g h
(h i
jsoni m
)m n
;n o
return 
items 
[ 
element  
]  !
.! "
ToString" *
(* +
)+ ,
;, -
} 	
public 
static 

Dictionary  
<  !
string! '
,' (

Dictionary) 3
<3 4
string4 :
,: ;
string< B
>B C
>C D
GetExcelColumnsNameE X
(X Y
stringY _
FileName` h
,h i
stringj p
elementq x
)x y
{ 	
using 
StreamReader 
r  
=! "
new# &
(& '
$str' 7
+8 9
FileName: B
+C D
$strE L
)L M
;M N
string 
json 
= 
r 
. 
	ReadToEnd %
(% &
)& '
;' (

Dictionary   
<   
string   
,   
object   %
>  % &
items  ' ,
=  - .
JsonConvert  / :
.  : ;
DeserializeObject  ; L
<  L M

Dictionary  M W
<  W X
string  X ^
,  ^ _
object  ` f
>  f g
>  g h
(  h i
json  i m
)  m n
;  n o

Dictionary!! 
<!! 
string!! 
,!! 

Dictionary!! )
<!!) *
string!!* 0
,!!0 1
string!!2 8
>!!8 9
>!!9 :
dic!!; >
=!!? @
JsonConvert!!A L
.!!L M
DeserializeObject!!M ^
<!!^ _

Dictionary!!_ i
<!!i j
string!!j p
,!!p q

Dictionary!!r |
<!!| }
string	!!} �
,
!!� �
string
!!� �
>
!!� �
>
!!� �
>
!!� �
(
!!� �
items
!!� �
[
!!� �
element
!!� �
]
!!� �
.
!!� �
ToString
!!� �
(
!!� �
)
!!� �
)
!!� �
;
!!� �
return"" 
dic"" 
;"" 
}## 	
public-- 
static-- 
List-- 
<-- 
int-- 
>-- &
GetActionStatusMappingList--  :
(--: ;
string--; A
FileName--B J
,--J K
string--L R
element--S Z
)--Z [
{.. 	
using// 
StreamReader// 
r//  
=//! "
new//# &
(//& '
$str//' 7
+//8 9
FileName//: B
+//C D
$str//E L
)//L M
;//M N
string00 
json00 
=00 
r00 
.00 
	ReadToEnd00 %
(00% &
)00& '
;00' (

Dictionary11 
<11 
string11 
,11 
List11 #
<11# $
int11$ '
>11' (
>11( )
items11* /
=110 1
JsonConvert112 =
.11= >
DeserializeObject11> O
<11O P

Dictionary11P Z
<11Z [
string11[ a
,11a b
List11c g
<11g h
int11h k
>11k l
>11l m
>11m n
(11n o
json11o s
)11s t
;11t u
List22 
<22 
int22 
>22 
list22 
=22 
items22 "
[22" #
element22# *
]22* +
;22+ ,
return33 
list33 
;33 
}44 	
}55 
public77 

static77 
class77 
SessionExtensions77 )
{88 
public99 
static99 
void99 
	SetObject99 $
(99$ %
this99% )
ISession99* 2
session993 :
,99: ;
string99< B
key99C F
,99F G
object99H N
value99O T
)99T U
{:: 	
session;; 
.;; 
	SetString;; 
(;; 
key;; !
,;;! "
JsonConvert;;# .
.;;. /
SerializeObject;;/ >
(;;> ?
value;;? D
,;;D E

Formatting;;F P
.;;P Q
None;;Q U
,;;U V
new;;W Z"
JsonSerializerSettings;;[ q
(;;q r
);;r s
{;;t u"
ReferenceLoopHandling	;;v �
=
;;� �#
ReferenceLoopHandling
;;� �
.
;;� �
Ignore
;;� �
}
;;� �
)
;;� �
)
;;� �
;
;;� �
}<< 	
public>> 
static>> 
T>> 
	GetObject>> !
<>>! "
T>>" #
>>># $
(>>$ %
this>>% )
ISession>>* 2
session>>3 :
,>>: ;
string>>< B
key>>C F
)>>F G
{?? 	
var@@ 
value@@ 
=@@ 
session@@ 
.@@  
	GetString@@  )
(@@) *
key@@* -
)@@- .
;@@. /
returnAA 
valueAA 
==AA 
nullAA  
?AA! "
defaultAA# *
:AA+ ,
JsonConvertAA- 8
.AA8 9
DeserializeObjectAA9 J
<AAJ K
TAAK L
>AAL M
(AAM N
valueAAN S
)AAS T
;AAT U
}BB 	
}CC 
}DD �
wC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Controllers\QRGeneratorController.cs
	namespace 	

GenerateQR
 
. 
Controllers  
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 !
QRGeneratorController

 &
:

' (
ControllerBase

) 7
{ 
private 
readonly 
QRCodeService &
_qrCodeService' 5
;5 6
public !
QRGeneratorController $
($ %
QRCodeService% 2
qrCodeService3 @
)@ A
{ 	
_qrCodeService 
= 
qrCodeService *
;* +
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
GenerateCode )
() *
[* +
FromBody+ 3
]3 4
QRModel5 <
model= B
)B C
{ 	
var 
stringeBase64 
= 
_qrCodeService  .
.. /
GenerateQRCode/ =
(= >
model> C
)C D
;D E
var 
qrCodeImageBase64 !
=" #
GenerateQrCode$ 2
(2 3
stringeBase643 @
)@ A
;A B
return 
Ok 
( 
qrCodeImageBase64 '
)' (
;( )
} 	
private 
string 
GenerateQrCode %
(% &
string& ,

qrCodeData- 7
)7 8
{ 	
using 
( 
var 
qrGenerator "
=# $
new% (
QRCodeGenerator) 8
(8 9
)9 :
): ;
{ 
var 
qrCodeDataObj !
=" #
qrGenerator$ /
./ 0
CreateQrCode0 <
(< =

qrCodeData= G
,G H
QRCodeGeneratorI X
.X Y
ECCLevelY a
.a b
Qb c
)c d
;d e
var   
qrCode   
=   
new    
QRCode  ! '
(  ' (
qrCodeDataObj  ( 5
)  5 6
;  6 7
using!! 
(!! 
var!! 
qrCodeImage!! &
=!!' (
qrCode!!) /
.!!/ 0

GetGraphic!!0 :
(!!: ;
$num!!; =
)!!= >
)!!> ?
{"" 
using## 
(## 
var## 
ms## !
=##" #
new##$ '
MemoryStream##( 4
(##4 5
)##5 6
)##6 7
{$$ 
qrCodeImage%% #
.%%# $
Save%%$ (
(%%( )
ms%%) +
,%%+ ,
System%%- 3
.%%3 4
Drawing%%4 ;
.%%; <
Imaging%%< C
.%%C D
ImageFormat%%D O
.%%O P
Png%%P S
)%%S T
;%%T U
return&& 
Convert&& &
.&&& '
ToBase64String&&' 5
(&&5 6
ms&&6 8
.&&8 9
ToArray&&9 @
(&&@ A
)&&A B
)&&B C
;&&C D
}'' 
}(( 
})) 
}** 	
}++ 
},, �
pC:\Users\admin\Desktop\Devsecops_A3\GenerateQR\GenerateQR_v3\GenerateQR\GenerateQR\Controllers\HomeController.cs
	namespace 	

GenerateQR
 
. 
Controllers  
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 

HomeHelper		 #
_homeHelper		$ /
;		/ 0
public

 
HomeController

 
(

 

HomeHelper

 (

homeHelper

) 3
)

3 4
{ 	
_homeHelper 
= 

homeHelper $
;$ %
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' ("
SubmitUploadAttachFile) ?
(? @
	FileModel@ I
formDataJ R
)R S
{ 	
try 
{ 
string 
cat 
= 
$str "
;" #
var 
response 
= 
await $
_homeHelper% 0
.0 1"
SubmitUploadAttachFile1 G
(G H
formDataH P
,P Q
catR U
)U V
;V W
return 
Ok 
( 
response "
)" #
;# $
} 
catch 
( 
ExcelException !
ex" $
)$ %
{ 
return 
Json 
( 
ex 
. 
Message &
)& '
;' (
} 
catch   
(   
	Exception   
ex   
)    
{!! 
return"" 
Json"" 
("" 
ex"" 
."" 
Message"" &
)""& '
;""' (
}## 
}$$ 	
}&& 
}'' 