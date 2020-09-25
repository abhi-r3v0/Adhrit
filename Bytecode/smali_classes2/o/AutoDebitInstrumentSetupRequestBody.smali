.class public final Lo/AutoDebitInstrumentSetupRequestBody;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/os/Bundle;

.field public ICustomTabsCallback$Stub:Ljava/lang/String;

.field public ICustomTabsCallback$Stub$Proxy:Lorg/json/JSONObject;

.field public ICustomTabsService:Lo/AutoDebitRegistrationStatusResponse;

.field public asBinder:Ljava/lang/String;

.field public asInterface:Lo/getTotalAmountDue$onNavigationEvent;

.field public extraCallback:Landroid/os/Bundle;

.field public newSession:Z

.field public onMessageChannelReady:Landroid/location/Location;

.field public onNavigationEvent:Lo/ErrorDetail;

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:Ljava/lang/String;

.field public onTransact:Lo/setCardBackgroundView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/AutoDebitInstrumentSetupRequestBody;->ICustomTabsCallback$Stub$Proxy:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AutoDebitInstrumentSetupRequestBody;->onPostMessage:Ljava/util/List;

    return-void
.end method
