.class final synthetic Lo/LocationFingerPrint;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadResponseJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lorg/json/JSONObject;

.field private final onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LocationFingerPrint;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/LocationFingerPrint;->ICustomTabsCallback:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 3

    iget-object v0, p0, Lo/LocationFingerPrint;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/LocationFingerPrint;->ICustomTabsCallback:Lorg/json/JSONObject;

    const-string v2, "google.afma.nativeAds.renderVideo"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
