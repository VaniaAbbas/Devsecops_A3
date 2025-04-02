ò
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
è8
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
};; ¿
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
} Ã$
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
}'' ∆
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
}		 ˝

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
} ﬁF
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
)	__ Ä
;
__Ä Å
;
__Ç É
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
}qq £
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
} é¥
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
$str	BBz á
,
BBá à
$str
BBâ ü
)
BBü †
;
BB† °
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
ÄÄ (
=
ÄÄ) *
XLrow
ÄÄ+ 0
[
ÄÄ0 1
$str
ÄÄ1 C
]
ÄÄC D
;
ÄÄD E
VATNO
ÅÅ 
=
ÅÅ 
XLrow
ÅÅ  %
[
ÅÅ% &
$str
ÅÅ& -
]
ÅÅ- .
;
ÅÅ. /
	InvoiceNO
ÇÇ !
=
ÇÇ" #
XLrow
ÇÇ$ )
[
ÇÇ) *
$str
ÇÇ* 5
]
ÇÇ5 6
;
ÇÇ6 7
InvoiceDate
ÉÉ #
=
ÉÉ$ %
XLrow
ÉÉ& +
[
ÉÉ+ ,
$str
ÉÉ, 9
]
ÉÉ9 :
;
ÉÉ: ;
BillingMonth
ÑÑ $
=
ÑÑ% &
XLrow
ÑÑ' ,
[
ÑÑ, -
$str
ÑÑ- ;
]
ÑÑ; <
;
ÑÑ< =
DueDate
ÖÖ 
=
ÖÖ  !
XLrow
ÖÖ" '
[
ÖÖ' (
$str
ÖÖ( 1
]
ÖÖ1 2
;
ÖÖ2 3
SadadBILLID
ÜÜ #
=
ÜÜ$ %
XLrow
ÜÜ& +
[
ÜÜ+ ,
$str
ÜÜ, 9
]
ÜÜ9 :
;
ÜÜ: ;
CCHINO
áá 
=
áá  
XLrow
áá! &
[
áá& '
$str
áá' /
]
áá/ 0
;
áá0 1
DHSCode
àà 
=
àà  !
XLrow
àà" '
[
àà' (
$str
àà( 1
]
àà1 2
;
àà2 3
TotalExcVAT
ââ #
=
ââ$ %
XLrow
ââ& +
[
ââ+ ,
$str
ââ, 9
]
ââ9 :
;
ââ: ;
VAT
ää 
=
ää 
XLrow
ää #
[
ää# $
$str
ää$ )
]
ää) *
;
ää* +
TotalWithVAT
ãã $
=
ãã% &
XLrow
ãã' ,
[
ãã, -
$str
ãã- ;
]
ãã; <
;
ãã< =
ContractType
åå $
=
åå% &
XLrow
åå' ,
[
åå, -
$str
åå- ;
]
åå; <
;
åå< =
	ClaimRate
çç !
=
çç" #
XLrow
çç$ )
[
çç) *
$str
çç* 5
]
çç5 6
;
çç6 7
SegmentPrice
éé $
=
éé% &
XLrow
éé' ,
[
éé, -
$str
éé- ;
]
éé; <
;
éé< =
CRMQuantity
èè #
=
èè$ %
XLrow
èè& +
[
èè+ ,
$str
èè, 9
]
èè9 :
;
èè: ;

Invoicable
êê "
=
êê# $
XLrow
êê% *
[
êê* +
$str
êê+ 7
]
êê7 8
;
êê8 9
GroupProvider
ëë %
=
ëë& '
XLrow
ëë( -
[
ëë- .
$str
ëë. =
]
ëë= >
;
ëë> ?
COMMERCIALREG
íí %
=
íí& '
XLrow
íí( -
[
íí- .
$str
íí. =
]
íí= >
;
íí> ?
CONTRACTDATE
ìì $
=
ìì% &
XLrow
ìì' ,
[
ìì, -
$str
ìì- ;
]
ìì; <
;
ìì< =

BatchMonth
îî "
=
îî# $
XLrow
îî% *
[
îî* +
$str
îî+ 7
]
îî7 8
;
îî8 9
}
ïï 
else
ññ 
{
óó 
item
òò 
=
òò 
XLrow
òò $
[
òò$ %
$str
òò% +
]
òò+ ,
;
òò, -
Description
ôô #
=
ôô$ %
XLrow
ôô& +
[
ôô+ ,
$str
ôô, 9
]
ôô9 :
;
ôô: ;
Quantity
öö  
=
öö! "
XLrow
öö# (
[
öö( )
$str
öö) 3
]
öö3 4
;
öö4 5
Rate
õõ 
=
õõ 
XLrow
õõ $
[
õõ$ %
$str
õõ% +
]
õõ+ ,
;
õõ, -
Discount
úú  
=
úú! "
XLrow
úú# (
[
úú( )
$str
úú) 3
]
úú3 4
;
úú4 5
Total
ùù 
=
ùù 
XLrow
ùù  %
[
ùù% &
$str
ùù& -
]
ùù- .
;
ùù. /
InsuranceCO
ûû #
=
ûû$ %
XLrow
ûû& +
[
ûû+ ,
$str
ûû, 9
]
ûû9 :
;
ûû: ;

BatchMonth
üü "
=
üü# $
XLrow
üü% *
[
üü* +
$str
üü+ 7
]
üü7 8
;
üü8 9
}
†† 
if
°° 
(
°° 
rowNum
°° 
==
°° !
$num
°°" #
)
°°# $
{
¢¢ 
reportModel
££ '
.
££' (
BillingMonth
££( 4
=
££5 6
!
££7 8
string
££8 >
.
££> ?
IsNullOrEmpty
££? L
(
££L M
BillingMonth
££M Y
)
££Y Z
?
££[ \
Convert
££] d
.
££d e

ToDateTime
££e o
(
££o p
BillingMonth
££p |
)
££| }
:
££~ 
null££Ä Ñ
;££Ñ Ö
reportModel
§§ #
.
§§# $
CCHINO
§§$ *
=
§§+ ,
CCHINO
§§- 3
;
§§3 4
reportModel
•• #
.
••# $
	ContactNO
••$ -
=
••. /
	ContactNO
••0 9
;
••9 :
reportModel
¶¶ #
.
¶¶# $
ContactPerson
¶¶$ 1
=
¶¶2 3
ContactPerson
¶¶4 A
;
¶¶A B
reportModel
ßß #
.
ßß# $
ContractRefrence
ßß$ 4
=
ßß5 6
ContractRefrence
ßß7 G
;
ßßG H
reportModel
®® #
.
®®# $
DHSCode
®®$ +
=
®®, -
DHSCode
®®. 5
;
®®5 6
reportModel
©© #
.
©©# $
DueDate
©©$ +
=
©©, -
!
©©. /
string
©©/ 5
.
©©5 6
IsNullOrEmpty
©©6 C
(
©©C D
DueDate
©©D K
)
©©K L
?
©©M N
Convert
©©O V
.
©©V W

ToDateTime
©©W a
(
©©a b
DueDate
©©b i
)
©©i j
:
©©k l
null
©©m q
;
©©q r
reportModel
™™ #
.
™™# $
EmailAddress
™™$ 0
=
™™1 2
EmailAddress
™™3 ?
;
™™? @
reportModel
´´ #
.
´´# $
HealthProvider
´´$ 2
=
´´3 4
HealthProvider
´´5 C
;
´´C D
reportModel
¨¨ #
.
¨¨# $
	InvoiceNO
¨¨$ -
=
¨¨. /
	InvoiceNO
¨¨0 9
;
¨¨9 :
reportModel
≠≠ #
.
≠≠# $
InvoiceDate
≠≠$ /
=
≠≠0 1
!
≠≠2 3
string
≠≠3 9
.
≠≠9 :
IsNullOrEmpty
≠≠: G
(
≠≠G H
InvoiceDate
≠≠H S
)
≠≠S T
?
≠≠U V
Convert
≠≠W ^
.
≠≠^ _

ToDateTime
≠≠_ i
(
≠≠i j
InvoiceDate
≠≠j u
)
≠≠u v
:
≠≠w x
null
≠≠y }
;
≠≠} ~
reportModel
ÆÆ #
.
ÆÆ# $
Location
ÆÆ$ ,
=
ÆÆ- .
Location
ÆÆ/ 7
;
ÆÆ7 8
reportModel
ØØ #
.
ØØ# $
SadadBILLID
ØØ$ /
=
ØØ0 1
SadadBILLID
ØØ2 =
;
ØØ= >
reportModel
∞∞ #
.
∞∞# $
VATNO
∞∞$ )
=
∞∞* +
VATNO
∞∞, 1
;
∞∞1 2
reportModel
±± #
.
±±# $
TotalExcVAT
±±$ /
=
±±0 1
!
±±2 3
string
±±3 9
.
±±9 :
IsNullOrEmpty
±±: G
(
±±G H
TotalExcVAT
±±H S
)
±±S T
?
±±U V!
GetDecimalTwoDigits
±±W j
(
±±j k
TotalExcVAT
±±k v
)
±±v w
:
±±x y
null
±±z ~
;
±±~ 
reportModel
≤≤ #
.
≤≤# $
	ClaimRate
≤≤$ -
=
≤≤. /
	ClaimRate
≤≤0 9
;
≤≤9 :
reportModel
≥≥ #
.
≥≥# $
ContractType
≥≥$ 0
=
≥≥1 2
ContractType
≥≥3 ?
;
≥≥? @
reportModel
¥¥ #
.
¥¥# $
SegmentPrice
¥¥$ 0
=
¥¥1 2
!
¥¥3 4
string
¥¥4 :
.
¥¥: ;
IsNullOrEmpty
¥¥; H
(
¥¥H I
SegmentPrice
¥¥I U
)
¥¥U V
?
¥¥W X!
GetDecimalTwoDigits
¥¥Y l
(
¥¥l m
SegmentPrice
¥¥m y
)
¥¥y z
:
¥¥{ |
null¥¥} Å
;¥¥Å Ç
reportModel
µµ #
.
µµ# $
TotalWithVAT
µµ$ 0
=
µµ1 2
!
µµ3 4
string
µµ4 :
.
µµ: ;
IsNullOrEmpty
µµ; H
(
µµH I
TotalWithVAT
µµI U
)
µµU V
?
µµW X!
GetDecimalTwoDigits
µµY l
(
µµl m
TotalWithVAT
µµm y
)
µµy z
:
µµ{ |
nullµµ} Å
;µµÅ Ç
reportModel
∂∂ #
.
∂∂# $
VAT
∂∂$ '
=
∂∂( )
!
∂∂* +
string
∂∂+ 1
.
∂∂1 2
IsNullOrEmpty
∂∂2 ?
(
∂∂? @
VAT
∂∂@ C
)
∂∂C D
?
∂∂E F!
GetDecimalTwoDigits
∂∂G Z
(
∂∂Z [
VAT
∂∂[ ^
)
∂∂^ _
:
∂∂` a
null
∂∂b f
;
∂∂f g
reportModel
∑∑ #
.
∑∑# $
CRMQuantity
∑∑$ /
=
∑∑0 1
CRMQuantity
∑∑2 =
;
∑∑= >
reportModel
∏∏ #
.
∏∏# $
GroupProvider
∏∏$ 1
=
∏∏2 3
GroupProvider
∏∏4 A
;
∏∏A B
reportModel
ππ #
.
ππ# $

Invoicable
ππ$ .
=
ππ/ 0
(
ππ1 2
!
ππ2 3
string
ππ3 9
.
ππ9 :
IsNullOrEmpty
ππ: G
(
ππG H

Invoicable
ππH R
)
ππR S
?
ππT U
(
ππV W
(
ππW X

Invoicable
ππX b
.
ππb c
ToLower
ππc j
(
ππj k
)
ππk l
==
ππm o
$str
ππp t
)
ππt u
?
ππv w
(
ππx y
false
ππy ~
)
ππ~ 
:ππÄ Å
(ππÇ É
trueππÉ á
)ππá à
)ππà â
:ππä ã
trueππå ê
)ππê ë
;ππë í
reportModel
∫∫ #
.
∫∫# $
TotalInWords
∫∫$ 0
=
∫∫1 2
NumberToWords
∫∫3 @
(
∫∫@ A
TotalWithVAT
∫∫A M
)
∫∫M N
;
∫∫N O
reportModel
ªª #
.
ªª# $
COMMERCIALREG
ªª$ 1
=
ªª2 3
COMMERCIALREG
ªª4 A
;
ªªA B
reportModel
ºº #
.
ºº# $
CONTRACTDATE
ºº$ 0
=
ºº1 2
!
ºº3 4
string
ºº4 :
.
ºº: ;
IsNullOrEmpty
ºº; H
(
ººH I
CONTRACTDATE
ººI U
)
ººU V
?
ººW X
Convert
ººY `
.
ºº` a

ToDateTime
ººa k
(
ººk l
CONTRACTDATE
ººl x
)
ººx y
:
ººz {
nullºº| Ä
;ººÄ Å
reportModel
ΩΩ #
.
ΩΩ# $
items
ΩΩ$ )
=
ΩΩ* +
new
ΩΩ, /
	LineItems
ΩΩ0 9
[
ΩΩ9 :
$num
ΩΩ: ;
]
ΩΩ; <
;
ΩΩ< =
reportModel
ææ #
.
ææ# $
items
ææ$ )
[
ææ) *
$num
ææ* +
]
ææ+ ,
=
ææ- .
new
ææ/ 2
	LineItems
ææ3 <
(
ææ< =
)
ææ= >
;
ææ> ?
reportModel
øø #
.
øø# $
items
øø$ )
[
øø) *
$num
øø* +
]
øø+ ,
=
øø- .
new
øø/ 2
	LineItems
øø3 <
(
øø< =
)
øø= >
;
øø> ?
reportModel
¿¿ #
.
¿¿# $
items
¿¿$ )
[
¿¿) *
$num
¿¿* +
]
¿¿+ ,
=
¿¿- .
new
¿¿/ 2
	LineItems
¿¿3 <
(
¿¿< =
)
¿¿= >
;
¿¿> ?
reportModel
¡¡ #
.
¡¡# $

BatchMonth
¡¡$ .
=
¡¡/ 0

BatchMonth
¡¡1 ;
;
¡¡; <
}
¬¬ 
else
√√ 
if
√√ 
(
√√ 
rowNum
√√ "
<=
√√# %
$num
√√& '
)
√√' (
{
ƒƒ 
reportModel
≈≈ #
.
≈≈# $
items
≈≈$ )
[
≈≈) *
rowNum
≈≈* 0
-
≈≈0 1
$num
≈≈1 2
]
≈≈2 3
.
≈≈3 4
item
≈≈4 8
=
≈≈9 :
item
≈≈; ?
;
≈≈? @
reportModel
∆∆ #
.
∆∆# $
items
∆∆$ )
[
∆∆) *
rowNum
∆∆* 0
-
∆∆0 1
$num
∆∆1 2
]
∆∆2 3
.
∆∆3 4
Description
∆∆4 ?
=
∆∆@ A
Description
∆∆B M
;
∆∆M N
reportModel
«« #
.
««# $
items
««$ )
[
««) *
rowNum
««* 0
-
««0 1
$num
««1 2
]
««2 3
.
««3 4
Quantity
««4 <
=
««= >
!
««? @
string
««@ F
.
««F G
IsNullOrEmpty
««G T
(
««T U
Quantity
««U ]
)
««] ^
?
««_ `!
GetDecimalTwoDigits
««a t
(
««t u
Quantity
««u }
)
««} ~
:«« Ä
null««Å Ö
;««Ö Ü
reportModel
»» #
.
»»# $
items
»»$ )
[
»») *
rowNum
»»* 0
-
»»0 1
$num
»»1 2
]
»»2 3
.
»»3 4
Rate
»»4 8
=
»»9 :
!
»»; <
string
»»< B
.
»»B C
IsNullOrEmpty
»»C P
(
»»P Q
Rate
»»Q U
)
»»U V
?
»»W X!
GetDecimalTwoDigits
»»Y l
(
»»l m
Rate
»»m q
)
»»q r
:
»»s t
null
»»u y
;
»»y z
reportModel
…… #
.
……# $
items
……$ )
[
……) *
rowNum
……* 0
-
……0 1
$num
……1 2
]
……2 3
.
……3 4
Discount
……4 <
=
……= >
!
……? @
string
……@ F
.
……F G
IsNullOrEmpty
……G T
(
……T U
Discount
……U ]
)
……] ^
?
……_ `!
GetDecimalTwoDigits
……a t
(
……t u
Discount
……u }
)
……} ~
:…… Ä
null……Å Ö
;……Ö Ü
reportModel
   #
.
  # $
items
  $ )
[
  ) *
rowNum
  * 0
-
  0 1
$num
  1 2
]
  2 3
.
  3 4
Total
  4 9
=
  : ;
!
  < =
string
  = C
.
  C D
IsNullOrEmpty
  D Q
(
  Q R
Total
  R W
)
  W X
?
  Y Z!
GetDecimalTwoDigits
  [ n
(
  n o
Total
  o t
)
  t u
:
  v w
null
  x |
;
  | }
reportModel
ÀÀ #
.
ÀÀ# $
items
ÀÀ$ )
[
ÀÀ) *
rowNum
ÀÀ* 0
-
ÀÀ1 2
$num
ÀÀ3 4
]
ÀÀ4 5
.
ÀÀ5 6
InsuranceCO
ÀÀ6 A
=
ÀÀB C
InsuranceCO
ÀÀD O
;
ÀÀO P
reportModel
ÃÃ #
.
ÃÃ# $
items
ÃÃ$ )
[
ÃÃ) *
rowNum
ÃÃ* 0
-
ÃÃ1 2
$num
ÃÃ3 4
]
ÃÃ4 5
.
ÃÃ5 6

BatchMonth
ÃÃ6 @
=
ÃÃA B

BatchMonth
ÃÃC M
;
ÃÃM N
}
ÕÕ 
rowNum
ŒŒ 
++
ŒŒ 
;
ŒŒ 
}
œœ 
if
—— 
(
—— 
Convert
—— 
.
—— 
	ToBoolean
—— %
(
——% &
reportModel
——& 1
?
——1 2
.
——2 3

Invoicable
——3 =
)
——= >
)
——> ?
{
““ 
if
”” 
(
””  
ValidateModel
””  -
(
””- .
cat
””. 1
,
””1 2
reportModel
””3 >
)
””> ?
)
””? @
{
‘‘ 
QRModel
’’  '
model
’’( -
=
’’. /
new
’’0 3
(
’’3 4
)
’’4 5
{
÷÷  !

SellerName
◊◊$ .
=
◊◊/ 0
$str
◊◊1 Z
,
◊◊Z [
InvoiceAmount
ÿÿ$ 1
=
ÿÿ2 3!
GetDecimalTwoDigits
ÿÿ4 G
(
ÿÿG H
TotalWithVAT
ÿÿH T
)
ÿÿT U
.
ÿÿU V
ToString
ÿÿV ^
(
ÿÿ^ _
)
ÿÿ_ `
,
ÿÿ` a
	VatAmount
ŸŸ$ -
=
ŸŸ. /!
GetDecimalTwoDigits
ŸŸ0 C
(
ŸŸC D
VAT
ŸŸD G
)
ŸŸG H
.
ŸŸH I
ToString
ŸŸI Q
(
ŸŸQ R
)
ŸŸR S
,
ŸŸS T
	VatNumber
⁄⁄$ -
=
⁄⁄. /
$str
⁄⁄0 A
,
⁄⁄A B
	TimeStamp
€€$ -
=
€€. /
InvoiceDate
€€0 ;
,
€€; <
}
››  !
;
››! "
var
ﬁﬁ  #
stringeBase64
ﬁﬁ$ 1
=
ﬁﬁ2 3
_qrCodeService
ﬁﬁ4 B
.
ﬁﬁB C
GenerateQRCode
ﬁﬁC Q
(
ﬁﬁQ R
model
ﬁﬁR W
)
ﬁﬁW X
;
ﬁﬁX Y
var
ﬂﬂ  #
qrCodeImageBase64
ﬂﬂ$ 5
=
ﬂﬂ6 7
GenerateQrCode
ﬂﬂ8 F
(
ﬂﬂF G
stringeBase64
ﬂﬂG T
)
ﬂﬂT U
;
ﬂﬂU V
reportModel
‡‡  +
.
‡‡+ ,
QrCodeImageBase64
‡‡, =
=
‡‡> ?
qrCodeImageBase64
‡‡@ Q
;
‡‡Q R
string
‚‚  &
TaxInvoiceString
‚‚' 7
=
‚‚8 9
$str
‚‚: <
;
‚‚< =
if
„„  "
(
„„# $
cat
„„$ '
==
„„( *
$str
„„+ 0
)
„„0 1
{
‰‰  !
TaxInvoiceString
ÂÂ$ 4
=
ÂÂ5 6
await
ÂÂ7 <(
_razorViewToStringRenderer
ÂÂ= W
.
ÂÂW X%
RenderViewToStringAsync
ÂÂX o
(
ÂÂo p
$strÂÂp ì
,ÂÂì î
reportModelÂÂï †
)ÂÂ† °
;ÂÂ° ¢
}
ÊÊ  !
else
ÁÁ  $
{
ËË  !
TaxInvoiceString
ÈÈ$ 4
=
ÈÈ5 6
await
ÈÈ7 <(
_razorViewToStringRenderer
ÈÈ= W
.
ÈÈW X%
RenderViewToStringAsync
ÈÈX o
(
ÈÈo p
$strÈÈp ê
,ÈÈê ë
reportModelÈÈí ù
)ÈÈù û
;ÈÈû ü
}
ÍÍ  !
var
ÌÌ  #
fileName
ÌÌ$ ,
=
ÌÌ- .
	InvoiceNO
ÌÌ/ 8
;
ÌÌ8 9
string
ÓÓ  &

dateFormat
ÓÓ' 1
=
ÓÓ2 3
	TimeStamp
ÓÓ4 =
.
ÓÓ= >
ToString
ÓÓ> F
(
ÓÓF G
$str
ÓÓG P
)
ÓÓP Q
;
ÓÓQ R
string
ÔÔ  &
path
ÔÔ' +
=
ÔÔ, -
$str
ÔÔ. [
+
ÔÔ\ ]

dateFormat
ÔÔ^ h
+
ÔÔi j
$str
ÔÔk n
+
ÔÔo p
	TimeStamp
ÔÔq z
.
ÔÔz {
ToStringÔÔ{ É
(ÔÔÉ Ñ
$strÔÔÑ å
)ÔÔå ç
+ÔÔé è
$strÔÔê î
+ÔÔï ñ
fileNameÔÔó ü
+ÔÔ† °
$strÔÔ¢ ®
;ÔÔ® ©
try
ÒÒ  #
{
ÚÚ  !
await
ÛÛ$ )$
PFDFileGeneratorHelper
ÛÛ* @
.
ÛÛ@ A%
ConvertHtmlToPdfForUFAC
ÛÛA X
(
ÛÛX Y
CCHINO
ÛÛY _
,
ÛÛ_ `
path
ÛÛa e
,
ÛÛe f
TaxInvoiceString
ÛÛg w
)
ÛÛw x
;
ÛÛx y
}
¯¯  !
catch
˘˘  %
(
˘˘& '
	Exception
˘˘' 0
ex
˘˘1 3
)
˘˘3 4
{
˙˙  !
string
˚˚$ *
error
˚˚+ 0
=
˚˚1 2
$str
˚˚3 5
;
˚˚5 6
if
¸¸$ &
(
¸¸' (
!
¸¸( )
string
¸¸) /
.
¸¸/ 0
IsNullOrEmpty
¸¸0 =
(
¸¸= >
CCHINO
¸¸> D
)
¸¸D E
)
¸¸E F
{
˝˝$ %
error
˛˛( -
=
˛˛. /
CCHINO
˛˛0 6
;
˛˛6 7
}
ˇˇ$ %
if
ÅÅ$ &
(
ÅÅ' (
!
ÅÅ( )
string
ÅÅ) /
.
ÅÅ/ 0
IsNullOrEmpty
ÅÅ0 =
(
ÅÅ= >
	InvoiceNO
ÅÅ> G
)
ÅÅG H
)
ÅÅH I
{
ÇÇ$ %
error
ÉÉ( -
+=
ÉÉ. 0
$str
ÉÉ1 5
+
ÉÉ6 7
	InvoiceNO
ÉÉ8 A
;
ÉÉA B
}
ÑÑ$ %
error
ÜÜ$ )
+=
ÜÜ* ,
$str
ÜÜ- 0
+
ÜÜ1 2
ex
ÜÜ3 5
?
ÜÜ5 6
.
ÜÜ6 7
Message
ÜÜ7 >
;
ÜÜ> ?
errors
àà$ *
.
àà* +
Add
àà+ .
(
àà. /
error
àà/ 4
)
àà4 5
;
àà5 6
}
ââ  !
}
ää 
else
ãã  
{
åå 
string
çç  &
NoFile
çç' -
=
çç. /
$str
çç0 2
;
çç2 3
if
éé  "
(
éé# $
!
éé$ %
string
éé% +
.
éé+ ,
IsNullOrEmpty
éé, 9
(
éé9 :
CCHINO
éé: @
)
éé@ A
)
ééA B
{
èè  !
NoFile
êê$ *
=
êê+ ,
CCHINO
êê- 3
;
êê3 4
}
ëë  !
if
ìì  "
(
ìì# $
!
ìì$ %
string
ìì% +
.
ìì+ ,
IsNullOrEmpty
ìì, 9
(
ìì9 :
	InvoiceNO
ìì: C
)
ììC D
)
ììD E
{
îî  !
NoFile
ïï$ *
+=
ïï+ -
$str
ïï. 2
+
ïï3 4
	InvoiceNO
ïï5 >
;
ïï> ?
}
ññ  !
NoFiles
òò  '
.
òò' (
Add
òò( +
(
òò+ ,
NoFile
òò, 2
)
òò2 3
;
òò3 4
}
ôô 
}
öö 
}
õõ 
catch
úú 
(
úú 
	Exception
úú $
ex
úú% '
)
úú' (
{
ùù 
errors
ûû 
.
ûû 
Add
ûû "
(
ûû" #
ex
ûû# %
.
ûû% &
Message
ûû& -
)
ûû- .
;
ûû. /
}
üü 
try
°° 
{
¢¢ 
if
££ 
(
££ 
NoFiles
££ 
!=
££  "
null
££# '
&&
££( *
NoFiles
££+ 2
?
££2 3
.
££3 4
Count
££4 9
>
££: ;
$num
££< =
)
££= >
{
§§ 
string
•• 
fileName
•• '
=
••( )
$str
••* 1
;
••1 2
string
¶¶ 

dateFormat
¶¶ )
=
¶¶* +
	TimeStamp
¶¶, 5
.
¶¶5 6
ToString
¶¶6 >
(
¶¶> ?
$str
¶¶? H
)
¶¶H I
;
¶¶I J
string
ßß 
path
ßß #
=
ßß$ %
$strßß& ì
+ßßî ï

dateFormatßßñ †
+ßß° ¢
$strßß£ ¶
+ßßß ®
	TimeStampßß© ≤
.ßß≤ ≥
ToStringßß≥ ª
(ßßª º
$strßßº ƒ
)ßßƒ ≈
+ßß∆ «
$strßß» Ã
+ßßÕ Œ
fileNameßßœ ◊
+ßßÿ Ÿ
$strßß⁄ ‡
;ßß‡ ·
try
®® 
{
©© 
string
™™ "
str
™™# &
=
™™' (
$str
™™) +
;
™™+ ,
foreach
´´ #
(
´´$ %
var
´´% (
item
´´) -
in
´´. 0
NoFiles
´´1 8
??
´´9 ;
[
´´< =
]
´´= >
)
´´> ?
{
¨¨ 
str
≠≠  #
+=
≠≠$ &
item
≠≠' +
+
≠≠, -
$str
≠≠. 5
;
≠≠5 6
}
ÆÆ 
await
ØØ !$
PFDFileGeneratorHelper
ØØ" 8
.
ØØ8 9%
ConvertHtmlToPdfForUFAC
ØØ9 P
(
ØØP Q
$str
ØØQ W
,
ØØW X
path
ØØY ]
,
ØØ] ^
str
ØØ_ b
)
ØØb c
;
ØØc d
}
∞∞ 
catch
±± 
(
±± 
	Exception
±± (
ex
±±) +
)
±±+ ,
{
≤≤ 
}
¥¥ 
}
µµ 
}
∂∂ 
catch
∑∑ 
(
∑∑ 
	Exception
∑∑  
ex
∑∑! #
)
∑∑# $
{
∏∏ 
errors
ππ 
.
ππ 
Add
ππ 
(
ππ 
ex
ππ !
.
ππ! "
Message
ππ" )
)
ππ) *
;
ππ* +
}
∫∫ 
if
ΩΩ 
(
ΩΩ 
errors
ΩΩ 
!=
ΩΩ 
null
ΩΩ 
&&
ΩΩ !
errors
ΩΩ" (
?
ΩΩ( )
.
ΩΩ) *
Count
ΩΩ* /
>
ΩΩ0 1
$num
ΩΩ2 3
)
ΩΩ3 4
{
ææ 
string
øø 
fileName
øø 
=
øø  !
$str
øø" *
;
øø* +
string
¿¿ 

dateFormat
¿¿ !
=
¿¿" #
	TimeStamp
¿¿$ -
.
¿¿- .
ToString
¿¿. 6
(
¿¿6 7
$str
¿¿7 @
)
¿¿@ A
;
¿¿A B
string
¡¡ 
path
¡¡ 
=
¡¡ 
$str¡¡ ã
+¡¡å ç

dateFormat¡¡é ò
+¡¡ô ö
$str¡¡õ û
+¡¡ü †
	TimeStamp¡¡° ™
.¡¡™ ´
ToString¡¡´ ≥
(¡¡≥ ¥
$str¡¡¥ º
)¡¡º Ω
+¡¡æ ø
$str¡¡¿ ƒ
+¡¡≈ ∆
fileName¡¡« œ
+¡¡– —
$str¡¡“ ÿ
;¡¡ÿ Ÿ
try
¬¬ 
{
√√ 
string
ƒƒ 
str
ƒƒ 
=
ƒƒ  
$str
ƒƒ! #
;
ƒƒ# $
foreach
≈≈ 
(
≈≈ 
var
≈≈  
item
≈≈! %
in
≈≈& (
errors
≈≈) /
??
≈≈0 2
[
≈≈3 4
]
≈≈4 5
)
≈≈5 6
{
∆∆ 
str
«« 
+=
«« 
item
«« #
+
««$ %
$str
««& -
;
««- .
}
»» 
await
…… $
PFDFileGeneratorHelper
…… 0
.
……0 1%
ConvertHtmlToPdfForUFAC
……1 H
(
……H I
$str
……I O
,
……O P
path
……Q U
,
……U V
str
……W Z
)
……Z [
;
……[ \
}
   
catch
ÀÀ 
(
ÀÀ 
	Exception
ÀÀ  
ex
ÀÀ! #
)
ÀÀ# $
{
ÃÃ 
}
ŒŒ 
}
œœ 
return
—— 
errors
—— 
;
—— 
}
““ 	
private
”” 
static
”” 
bool
”” 
ValidateModel
”” )
(
””) *
string
””* 0
cat
””1 4
,
””4 5
ReportModel
””6 A
reportModel
””B M
)
””M N
{
‘‘ 	
var
’’ 
valid
’’ 
=
’’ 
(
’’ 
!
’’ 
string
’’  
.
’’  !
IsNullOrEmpty
’’! .
(
’’. /
reportModel
’’/ :
?
’’: ;
.
’’; <
HealthProvider
’’< J
)
’’J K
&&
’’L N
!
÷÷ 
string
÷÷ 
.
÷÷ 
IsNullOrEmpty
÷÷ )
(
÷÷) *
reportModel
÷÷* 5
?
÷÷5 6
.
÷÷6 7
Location
÷÷7 ?
)
÷÷? @
&&
÷÷A C
!
◊◊ 
string
◊◊ 
.
◊◊ 
IsNullOrEmpty
◊◊ )
(
◊◊) *
reportModel
◊◊* 5
?
◊◊5 6
.
◊◊6 7
ContactPerson
◊◊7 D
)
◊◊D E
&&
◊◊F H
!
ÿÿ 
string
ÿÿ 
.
ÿÿ 
IsNullOrEmpty
ÿÿ )
(
ÿÿ) *
reportModel
ÿÿ* 5
?
ÿÿ5 6
.
ÿÿ6 7
	ContactNO
ÿÿ7 @
)
ÿÿ@ A
&&
ÿÿB D
!
ŸŸ 
string
ŸŸ 
.
ŸŸ 
IsNullOrEmpty
ŸŸ )
(
ŸŸ) *
reportModel
ŸŸ* 5
?
ŸŸ5 6
.
ŸŸ6 7
EmailAddress
ŸŸ7 C
)
ŸŸC D
&&
ŸŸE G
!
⁄⁄ 
string
⁄⁄ 
.
⁄⁄ 
IsNullOrEmpty
⁄⁄ )
(
⁄⁄) *
reportModel
⁄⁄* 5
?
⁄⁄5 6
.
⁄⁄6 7
ContractRefrence
⁄⁄7 G
)
⁄⁄G H
&&
⁄⁄I K
!
€€ 
string
€€ 
.
€€ 
IsNullOrEmpty
€€ )
(
€€) *
reportModel
€€* 5
?
€€5 6
.
€€6 7
VATNO
€€7 <
)
€€< =
&&
€€> @
reportModel
‹‹ 
?
‹‹  
.
‹‹  !
InvoiceDate
‹‹! ,
!=
‹‹- /
null
‹‹0 4
&&
‹‹5 7
!
›› 
string
›› 
.
›› 
IsNullOrEmpty
›› )
(
››) *
reportModel
››* 5
?
››5 6
.
››6 7
	InvoiceNO
››7 @
)
››@ A
&&
››B D
reportModel
ﬁﬁ 
?
ﬁﬁ  
.
ﬁﬁ  !
BillingMonth
ﬁﬁ! -
!=
ﬁﬁ. 0
null
ﬁﬁ1 5
&&
ﬁﬁ6 8
reportModel
ﬂﬂ 
?
ﬂﬂ  
.
ﬂﬂ  !
DueDate
ﬂﬂ! (
!=
ﬂﬂ) +
null
ﬂﬂ, 0
&&
ﬂﬂ1 3
!
‡‡ 
string
‡‡ 
.
‡‡ 
IsNullOrEmpty
‡‡ )
(
‡‡) *
reportModel
‡‡* 5
?
‡‡5 6
.
‡‡6 7
CCHINO
‡‡7 =
)
‡‡= >
&&
‡‡? A
reportModel
ËË 
?
ËË  
.
ËË  !
TotalExcVAT
ËË! ,
!=
ËË- /
null
ËË0 4
&&
ËË5 7
!
ÈÈ 
string
ÈÈ 
.
ÈÈ 
IsNullOrEmpty
ÈÈ )
(
ÈÈ) *
reportModel
ÈÈ* 5
?
ÈÈ5 6
.
ÈÈ6 7
ContractType
ÈÈ7 C
)
ÈÈC D
&&
ÈÈE G
!
ÍÍ 
string
ÍÍ 
.
ÍÍ 
IsNullOrEmpty
ÍÍ )
(
ÍÍ) *
reportModel
ÍÍ* 5
?
ÍÍ5 6
.
ÍÍ6 7
	ClaimRate
ÍÍ7 @
)
ÍÍ@ A
&&
ÍÍB D
reportModel
ÎÎ 
?
ÎÎ  
.
ÎÎ  !
SegmentPrice
ÎÎ! -
!=
ÎÎ. 0
null
ÎÎ1 5
)
ÏÏ 
;
ÏÏ 
if
ÌÌ 
(
ÌÌ 
cat
ÌÌ 
==
ÌÌ 
$str
ÌÌ 
)
ÌÌ 
{
ÓÓ 
valid
ÔÔ 
&=
ÔÔ 
(
ÔÔ 
!
ÒÒ 
string
ÒÒ 
.
ÒÒ 
IsNullOrEmpty
ÒÒ )
(
ÒÒ) *
reportModel
ÒÒ* 5
?
ÒÒ5 6
.
ÒÒ6 7
DHSCode
ÒÒ7 >
)
ÒÒ> ?
)
ÒÒ? @
;
ÒÒ@ A
}
ÛÛ 
return
ıı 
valid
ıı 
;
ıı 
}
ˆˆ 	
public
˜˜ 
static
˜˜ 
decimal
˜˜ !
GetDecimalTwoDigits
˜˜ 1
(
˜˜1 2
decimal
˜˜2 9
?
˜˜9 :
value
˜˜; @
)
˜˜@ A
{
¯¯ 	
if
˘˘ 
(
˘˘ 
value
˘˘ 
==
˘˘ 
null
˘˘ 
)
˘˘ 
value
˘˘ $
=
˘˘% &
$num
˘˘' (
;
˘˘( )
return
˙˙ 
Convert
˙˙ 
.
˙˙ 
	ToDecimal
˙˙ $
(
˙˙$ %
string
˙˙% +
.
˙˙+ ,
Format
˙˙, 2
(
˙˙2 3
CultureInfo
˙˙3 >
.
˙˙> ?
CurrentCulture
˙˙? M
,
˙˙M N
$str
˙˙O Y
,
˙˙Y Z
value
˙˙[ `
)
˙˙` a
,
˙˙a b
CultureInfo
˙˙c n
.
˙˙n o
CurrentCulture
˙˙o }
)
˙˙} ~
;
˙˙~ 
}
˚˚ 	
public
¸¸ 
static
¸¸ 
decimal
¸¸ !
GetDecimalTwoDigits
¸¸ 1
(
¸¸1 2
string
¸¸2 8
value
¸¸9 >
)
¸¸> ?
{
˝˝ 	
if
˛˛ 
(
˛˛ 
value
˛˛ 
==
˛˛ 
null
˛˛ 
)
˛˛ 
value
˛˛ $
=
˛˛% &
$str
˛˛' *
;
˛˛* +
return
ˇˇ 
Convert
ˇˇ 
.
ˇˇ 
	ToDecimal
ˇˇ $
(
ˇˇ$ %
Convert
ˇˇ% ,
.
ˇˇ, -
	ToDecimal
ˇˇ- 6
(
ˇˇ6 7
string
ˇˇ7 =
.
ˇˇ= >
Format
ˇˇ> D
(
ˇˇD E
$str
ˇˇE O
,
ˇˇO P
value
ˇˇQ V
)
ˇˇV W
)
ˇˇW X
.
ˇˇX Y
ToString
ˇˇY a
(
ˇˇa b
$str
ˇˇb e
)
ˇˇe f
)
ˇˇf g
;
ˇˇg h
}
ÄÄ 	
public
ÇÇ 
static
ÇÇ 
string
ÇÇ 
NumberToWords
ÇÇ *
(
ÇÇ* +
string
ÇÇ+ 1
value
ÇÇ2 7
)
ÇÇ7 8
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ %
(
ÑÑ% &
value
ÑÑ& +
)
ÑÑ+ ,
)
ÑÑ, -
{
ÖÖ 
decimal
ÜÜ 
doubleNumber
ÜÜ $
=
ÜÜ% &
Convert
ÜÜ' .
.
ÜÜ. /
	ToDecimal
ÜÜ/ 8
(
ÜÜ8 9
Convert
ÜÜ9 @
.
ÜÜ@ A
	ToDecimal
ÜÜA J
(
ÜÜJ K
string
ÜÜK Q
.
ÜÜQ R
Format
ÜÜR X
(
ÜÜX Y
$str
ÜÜY c
,
ÜÜc d
value
ÜÜe j
)
ÜÜj k
)
ÜÜk l
.
ÜÜl m
ToString
ÜÜm u
(
ÜÜu v
$str
ÜÜv y
)
ÜÜy z
)
ÜÜz {
;
ÜÜ{ |
var
áá !
beforeFloatingPoint
áá '
=
áá( )
(
áá* +
int
áá+ .
)
áá. /
Math
áá/ 3
.
áá3 4
Floor
áá4 9
(
áá9 :
doubleNumber
áá: F
)
ááF G
;
ááG H
var
àà %
beforeFloatingPointWord
àà +
=
àà, -
$"
àà. 0
{
àà0 1
NumberToWords
àà1 >
(
àà> ?!
beforeFloatingPoint
àà? R
)
ààR S
}
ààS T
"
ààT U
;
ààU V
var
ââ $
afterFloatingPointWord
ââ *
=
ââ+ ,
$"
ää 
{
ää 
SmallNumberToWord
ää (
(
ää( )
(
ää) *
int
ää* -
)
ää- .
(
ää. /
(
ää/ 0
doubleNumber
ää0 <
-
ää= >!
beforeFloatingPoint
ää? R
)
ääR S
*
ääT U
$num
ääV Y
)
ääY Z
,
ääZ [
$str
ää\ ^
)
ää^ _
}
ää_ `
"
ää` a
;
ääa b
if
ãã 
(
ãã 
!
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã )
(
ãã) *$
afterFloatingPointWord
ãã* @
)
ãã@ A
)
ããA B
{
åå 
return
çç 
$"
çç 
{
çç %
beforeFloatingPointWord
çç 5
}
çç5 6
$str
çç6 ;
{
çç; <$
afterFloatingPointWord
çç< R
}
ççR S
"
ççS T
;
ççT U
}
éé 
else
èè 
{
êê 
return
ëë 
$"
ëë 
{
ëë %
beforeFloatingPointWord
ëë 5
}
ëë5 6
"
ëë6 7
;
ëë7 8
}
íí 
}
ìì 
return
ïï 
$str
ïï 
;
ïï 
}
ññ 	
private
óó 
static
óó 
string
óó 
NumberToWords
óó +
(
óó+ ,
int
óó, /
number
óó0 6
)
óó6 7
{
òò 	
if
ôô 
(
ôô 
number
ôô 
==
ôô 
$num
ôô 
)
ôô 
return
öö 
$str
öö 
;
öö 
if
úú 
(
úú 
number
úú 
<
úú 
$num
úú 
)
úú 
return
ùù 
$str
ùù 
+
ùù  !
NumberToWords
ùù" /
(
ùù/ 0
Math
ùù0 4
.
ùù4 5
Abs
ùù5 8
(
ùù8 9
number
ùù9 ?
)
ùù? @
)
ùù@ A
;
ùùA B
var
üü 
words
üü 
=
üü 
$str
üü 
;
üü 
if
°° 
(
°° 
number
°° 
/
°° 
$num
°° #
>
°°$ %
$num
°°& '
)
°°' (
{
¢¢ 
words
££ 
+=
££ 
NumberToWords
££ &
(
££& '
number
££' -
/
££. /
$num
££0 :
)
££: ;
+
££< =
$str
££> I
;
££I J
number
§§ 
%=
§§ 
$num
§§ $
;
§§$ %
}
•• 
if
ßß 
(
ßß 
number
ßß 
/
ßß 
$num
ßß  
>
ßß! "
$num
ßß# $
)
ßß$ %
{
®® 
words
©© 
+=
©© 
NumberToWords
©© &
(
©©& '
number
©©' -
/
©©. /
$num
©©0 7
)
©©7 8
+
©©9 :
$str
©©; F
;
©©F G
number
™™ 
%=
™™ 
$num
™™ !
;
™™! "
}
´´ 
if
≠≠ 
(
≠≠ 
number
≠≠ 
/
≠≠ 
$num
≠≠ 
>
≠≠ 
$num
≠≠  !
)
≠≠! "
{
ÆÆ 
words
ØØ 
+=
ØØ 
NumberToWords
ØØ &
(
ØØ& '
number
ØØ' -
/
ØØ. /
$num
ØØ0 4
)
ØØ4 5
+
ØØ6 7
$str
ØØ8 D
;
ØØD E
number
∞∞ 
%=
∞∞ 
$num
∞∞ 
;
∞∞ 
}
±± 
if
≥≥ 
(
≥≥ 
number
≥≥ 
/
≥≥ 
$num
≥≥ 
>
≥≥ 
$num
≥≥  
)
≥≥  !
{
¥¥ 
words
µµ 
+=
µµ 
NumberToWords
µµ &
(
µµ& '
number
µµ' -
/
µµ. /
$num
µµ0 3
)
µµ3 4
+
µµ5 6
$str
µµ7 B
;
µµB C
number
∂∂ 
%=
∂∂ 
$num
∂∂ 
;
∂∂ 
}
∑∑ 
words
ππ 
=
ππ 
SmallNumberToWord
ππ %
(
ππ% &
number
ππ& ,
,
ππ, -
words
ππ. 3
)
ππ3 4
;
ππ4 5
return
ªª 
words
ªª 
;
ªª 
}
ºº 	
private
ΩΩ 
static
ΩΩ 
string
ΩΩ 
SmallNumberToWord
ΩΩ /
(
ΩΩ/ 0
int
ΩΩ0 3
number
ΩΩ4 :
,
ΩΩ: ;
string
ΩΩ< B
words
ΩΩC H
)
ΩΩH I
{
ææ 	
if
øø 
(
øø 
number
øø 
<=
øø 
$num
øø 
)
øø 
return
øø #
words
øø$ )
;
øø) *
if
¿¿ 
(
¿¿ 
words
¿¿ 
!=
¿¿ 
$str
¿¿ 
)
¿¿ 
words
¡¡ 
+=
¡¡ 
$str
¡¡ 
;
¡¡ 
var
√√ 
unitsMap
√√ 
=
√√ 
new
√√ 
[
√√ 
]
√√  
{
√√! "
$str
√√# )
,
√√) *
$str
√√+ 0
,
√√0 1
$str
√√2 7
,
√√7 8
$str
√√9 @
,
√√@ A
$str
√√B H
,
√√H I
$str
√√J P
,
√√P Q
$str
√√R W
,
√√W X
$str
√√Y `
,
√√` a
$str
√√b i
,
√√i j
$str
√√k q
,
√√q r
$str
√√s x
,
√√x y
$str√√z Ç
,√√Ç É
$str√√Ñ å
,√√å ç
$str√√é ò
,√√ò ô
$str√√ö §
,√√§ •
$str√√¶ Ø
,√√Ø ∞
$str√√± ∫
,√√∫ ª
$str√√º «
,√√« »
$str√√… ”
,√√” ‘
$str√√’ ﬂ
}√√‡ ·
;√√· ‚
var
ƒƒ 
tensMap
ƒƒ 
=
ƒƒ 
new
ƒƒ 
[
ƒƒ 
]
ƒƒ 
{
ƒƒ  !
$str
ƒƒ" (
,
ƒƒ( )
$str
ƒƒ* /
,
ƒƒ/ 0
$str
ƒƒ1 9
,
ƒƒ9 :
$str
ƒƒ; C
,
ƒƒC D
$str
ƒƒE L
,
ƒƒL M
$str
ƒƒN U
,
ƒƒU V
$str
ƒƒW ^
,
ƒƒ^ _
$str
ƒƒ` i
,
ƒƒi j
$str
ƒƒk s
,
ƒƒs t
$str
ƒƒu }
}
ƒƒ~ 
;ƒƒ Ä
if
∆∆ 
(
∆∆ 
number
∆∆ 
<
∆∆ 
$num
∆∆ 
)
∆∆ 
words
«« 
+=
«« 
unitsMap
«« !
[
««! "
number
««" (
]
««( )
;
««) *
else
»» 
{
…… 
words
   
+=
   
tensMap
    
[
    !
number
  ! '
/
  ( )
$num
  * ,
]
  , -
;
  - .
if
ÀÀ 
(
ÀÀ 
(
ÀÀ 
number
ÀÀ 
%
ÀÀ 
$num
ÀÀ  
)
ÀÀ  !
>
ÀÀ" #
$num
ÀÀ$ %
)
ÀÀ% &
words
ÃÃ 
+=
ÃÃ 
$str
ÃÃ  
+
ÃÃ! "
unitsMap
ÃÃ# +
[
ÃÃ+ ,
number
ÃÃ, 2
%
ÃÃ3 4
$num
ÃÃ5 7
]
ÃÃ7 8
;
ÃÃ8 9
}
ÕÕ 
return
ŒŒ 
words
ŒŒ 
;
ŒŒ 
}
œœ 	
public
““ 
class
““ 
	FileModel
““ 
{
”” 	
public
‘‘ 
	IFormFile
‘‘ 
uploadExcelFile
‘‘ ,
{
‘‘- .
get
‘‘/ 2
;
‘‘2 3
set
‘‘4 7
;
‘‘7 8
}
‘‘9 :
public
’’ 
List
’’ 
<
’’ 
string
’’ 
>
’’ 
ResultMessage
’’  -
{
’’. /
get
’’0 3
;
’’3 4
set
’’5 8
;
’’8 9
}
’’: ;
public
÷÷ 
bool
÷÷ 
IsFileUploaded
÷÷ &
{
÷÷' (
get
÷÷) ,
;
÷÷, -
set
÷÷. 1
;
÷÷1 2
}
÷÷3 4
}
◊◊ 	
[
ÿÿ 	
Serializable
ÿÿ	 
]
ÿÿ 
public
ŸŸ 
class
ŸŸ 
ExcelException
ŸŸ #
:
ŸŸ$ %
	Exception
ŸŸ& /
{
⁄⁄ 	
public
€€ 
ExcelException
€€ !
(
€€! "
)
€€" #
{
‹‹ 
}
›› 
public
ﬁﬁ 
ExcelException
ﬁﬁ !
(
ﬁﬁ! "
string
ﬁﬁ" (
message
ﬁﬁ) 0
)
ﬁﬁ0 1
:
ﬁﬁ2 3
base
ﬁﬁ4 8
(
ﬁﬁ8 9
message
ﬁﬁ9 @
)
ﬁﬁ@ A
{
ﬂﬂ 
}
‡‡ 
public
‚‚ 
ExcelException
‚‚ !
(
‚‚! "
string
‚‚" (
message
‚‚) 0
,
‚‚0 1
	Exception
‚‚2 ;
innerException
‚‚< J
)
‚‚J K
:
‚‚L M
base
‚‚N R
(
‚‚R S
message
‚‚S Z
,
‚‚Z [
innerException
‚‚\ j
)
‚‚j k
{
„„ 
}
‰‰ 
	protected
ÁÁ 
ExcelException
ÁÁ $
(
ÁÁ$ %
SerializationInfo
ÁÁ% 6
info
ÁÁ7 ;
,
ÁÁ; <
StreamingContext
ÁÁ= M
context
ÁÁN U
)
ÁÁU V
:
ÁÁW X
base
ÁÁY ]
(
ÁÁ] ^
info
ÁÁ^ b
,
ÁÁb c
context
ÁÁd k
)
ÁÁk l
{
ËË 
}
ÈÈ 
}
ÍÍ 	
public
ÏÏ 
static
ÏÏ 
string
ÏÏ 
GetValueFromTable
ÏÏ .
(
ÏÏ. /
DataRow
ÏÏ/ 6
dr
ÏÏ7 9
,
ÏÏ9 :
string
ÏÏ; A
key
ÏÏB E
,
ÏÏE F

Dictionary
ÏÏG Q
<
ÏÏQ R
string
ÏÏR X
,
ÏÏX Y

Dictionary
ÏÏZ d
<
ÏÏd e
string
ÏÏe k
,
ÏÏk l
string
ÏÏm s
>
ÏÏs t
>
ÏÏt u
ExcelColumnsNameÏÏv Ü
)ÏÏÜ á
{
ÌÌ 	
string
ÓÓ 
value
ÓÓ 
=
ÓÓ 
$str
ÓÓ 
;
ÓÓ 
if
ÔÔ 
(
ÔÔ 
dr
ÔÔ 
!=
ÔÔ 
null
ÔÔ 
&&
ÔÔ 
ExcelColumnsName
ÔÔ .
?
ÔÔ. /
.
ÔÔ/ 0
Count
ÔÔ0 5
>
ÔÔ6 7
$num
ÔÔ8 9
)
ÔÔ9 :
{
 
var
ÒÒ 
selectedKey
ÒÒ 
=
ÒÒ  !
ExcelColumnsName
ÒÒ" 2
[
ÒÒ2 3
key
ÒÒ3 6
]
ÒÒ6 7
.
ÒÒ7 8
Select
ÒÒ8 >
(
ÒÒ> ?
a
ÒÒ? @
=>
ÒÒA C
a
ÒÒD E
.
ÒÒE F
Value
ÒÒF K
)
ÒÒK L
.
ÒÒL M
FirstOrDefault
ÒÒM [
(
ÒÒ[ \
)
ÒÒ\ ]
;
ÒÒ] ^
value
ÚÚ 
=
ÚÚ 
dr
ÚÚ 
[
ÚÚ 
selectedKey
ÚÚ &
]
ÚÚ& '
.
ÚÚ' (
ToString
ÚÚ( 0
(
ÚÚ0 1
)
ÚÚ1 2
;
ÚÚ2 3
}
ÛÛ 
return
ıı 
value
ıı 
;
ıı 
}
ˆˆ 	
public
˘˘ 
static
˘˘ 
string
˘˘ 
GenerateQrCode
˘˘ +
(
˘˘+ ,
string
˘˘, 2

qrCodeData
˘˘3 =
)
˘˘= >
{
˙˙ 	
using
˚˚ 
(
˚˚ 
var
˚˚ 
qrGenerator
˚˚ "
=
˚˚# $
new
˚˚% (
QRCodeGenerator
˚˚) 8
(
˚˚8 9
)
˚˚9 :
)
˚˚: ;
{
¸¸ 
var
˝˝ 
qrCodeDataObj
˝˝ !
=
˝˝" #
qrGenerator
˝˝$ /
.
˝˝/ 0
CreateQrCode
˝˝0 <
(
˝˝< =

qrCodeData
˝˝= G
,
˝˝G H
QRCodeGenerator
˝˝I X
.
˝˝X Y
ECCLevel
˝˝Y a
.
˝˝a b
Q
˝˝b c
)
˝˝c d
;
˝˝d e
var
˛˛ 
qrCode
˛˛ 
=
˛˛ 
new
˛˛  
QRCode
˛˛! '
(
˛˛' (
qrCodeDataObj
˛˛( 5
)
˛˛5 6
;
˛˛6 7
using
ˇˇ 
(
ˇˇ 
var
ˇˇ 
qrCodeImage
ˇˇ &
=
ˇˇ' (
qrCode
ˇˇ) /
.
ˇˇ/ 0

GetGraphic
ˇˇ0 :
(
ˇˇ: ;
$num
ˇˇ; =
)
ˇˇ= >
)
ˇˇ> ?
{
ÄÄ 
using
ÅÅ 
(
ÅÅ 
var
ÅÅ 
ms
ÅÅ !
=
ÅÅ" #
new
ÅÅ$ '
MemoryStream
ÅÅ( 4
(
ÅÅ4 5
)
ÅÅ5 6
)
ÅÅ6 7
{
ÇÇ 
qrCodeImage
ÉÉ #
.
ÉÉ# $
Save
ÉÉ$ (
(
ÉÉ( )
ms
ÉÉ) +
,
ÉÉ+ ,
System
ÉÉ- 3
.
ÉÉ3 4
Drawing
ÉÉ4 ;
.
ÉÉ; <
Imaging
ÉÉ< C
.
ÉÉC D
ImageFormat
ÉÉD O
.
ÉÉO P
Png
ÉÉP S
)
ÉÉS T
;
ÉÉT U
return
ÑÑ 
Convert
ÑÑ &
.
ÑÑ& '
ToBase64String
ÑÑ' 5
(
ÑÑ5 6
ms
ÑÑ6 8
.
ÑÑ8 9
ToArray
ÑÑ9 @
(
ÑÑ@ A
)
ÑÑA B
)
ÑÑB C
;
ÑÑC D
}
ÖÖ 
}
ÜÜ 
}
áá 
}
àà 	
}
ââ 
publicãã 
class
ãã 
EmailService
ãã 
{
åå 
public
çç 
bool
çç 
	SendEmail
çç 
(
çç 
string
çç $
toEmail
çç% ,
,
çç, -
string
çç. 4
subject
çç5 <
,
çç< =
string
çç> D
pdfFilePath
ççE P
)
ççP Q
{
éé 	
string
êê 
htmlContent
êê 
=
êê  
$str
êò! 
;
òò 
try
öö 
{
õõ 

SmtpClient
ùù 
client
ùù !
=
ùù" #
new
ùù$ '

SmtpClient
ùù( 2
(
ùù2 3
$str
ùù3 G
,
ùùG H
$num
ùùI K
)
ùùK L
{
ûû 
Credentials
üü 
=
üü  !
new
üü" %
NetworkCredential
üü& 7
(
üü7 8
$str
üü8 P
,
üüP Q
$str
üüR d
)
üüd e
,
üüe f
	EnableSsl
†† 
=
†† 
true
††  $
}
°° 
;
°° 
MailMessage
§§ 
mailMessage
§§ '
=
§§( )
new
§§* -
MailMessage
§§. 9
{
•• 
From
¶¶ 
=
¶¶ 
new
¶¶ 
MailAddress
¶¶ *
(
¶¶* +
$str
¶¶+ C
)
¶¶C D
,
¶¶D E
Subject
ßß 
=
ßß 
subject
ßß %
,
ßß% &
Body
®® 
=
®® 
htmlContent
®® &
,
®®& '

IsBodyHtml
©© 
=
©©  
true
©©! %
}
™™ 
;
™™ 
mailMessage
´´ 
.
´´ 
To
´´ 
.
´´ 
Add
´´ "
(
´´" #
toEmail
´´# *
)
´´* +
;
´´+ ,

Attachment
ÆÆ 
pdfAttachment
ÆÆ (
=
ÆÆ) *
new
ÆÆ+ .

Attachment
ÆÆ/ 9
(
ÆÆ9 :
pdfFilePath
ÆÆ: E
)
ÆÆE F
;
ÆÆF G
mailMessage
ØØ 
.
ØØ 
Attachments
ØØ '
.
ØØ' (
Add
ØØ( +
(
ØØ+ ,
pdfAttachment
ØØ, 9
)
ØØ9 :
;
ØØ: ;
client
≤≤ 
.
≤≤ 
Send
≤≤ 
(
≤≤ 
mailMessage
≤≤ '
)
≤≤' (
;
≤≤( )
return
≥≥ 
true
≥≥ 
;
≥≥ 
}
¥¥ 
catch
µµ 
(
µµ 
	Exception
µµ 
)
µµ 
{
∂∂ 
return
∏∏ 
false
∏∏ 
;
∏∏ 
}
ππ 
}
∫∫ 	
}
ªª 
}ºº ⁄
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
}%% ûD
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

Dictionary	&&v Ä
<
&&Ä Å
string
&&Å á
,
&&á à
string
&&â è
>
&&è ê
>
&&ê ë"
MainExcelColumnsName
&&í ¶
)
&&¶ ß
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
MainExcelColumnsName	==l Ä
)
==Ä Å
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
}aa ™?
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
string	!!} É
,
!!É Ñ
string
!!Ö ã
>
!!ã å
>
!!å ç
>
!!ç é
(
!!é è
items
!!è î
[
!!î ï
element
!!ï ú
]
!!ú ù
.
!!ù û
ToString
!!û ¶
(
!!¶ ß
)
!!ß ®
)
!!® ©
;
!!© ™
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
ReferenceLoopHandling	;;v ã
=
;;å ç#
ReferenceLoopHandling
;;é £
.
;;£ §
Ignore
;;§ ™
}
;;´ ¨
)
;;¨ ≠
)
;;≠ Æ
;
;;Æ Ø
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
}DD ⁄
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
},, Ò
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