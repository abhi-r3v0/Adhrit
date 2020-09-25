.class public Lo/setClientAuthTokenExpiry;
.super Lo/setClientAuthToken;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private asBinder:D

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Lo/getFinanceCharges$onPostMessage;

.field private onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setClientAuthToken;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public final extraCallback(Lo/getFinanceCharges$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->onMessageChannelReady:Lo/getFinanceCharges$onPostMessage;

    return-void
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final newSession()Lo/getFinanceCharges$onPostMessage;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->onMessageChannelReady:Lo/getFinanceCharges$onPostMessage;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(D)V
    .locals 0

    iput-wide p1, p0, Lo/setClientAuthTokenExpiry;->asBinder:D

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/setClientAuthTokenExpiry;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method public final postMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final updateVisuals()D
    .locals 2

    iget-wide v0, p0, Lo/setClientAuthTokenExpiry;->asBinder:D

    return-wide v0
.end method

.method public final warmup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setClientAuthTokenExpiry;->onNavigationEvent:Ljava/util/List;

    return-object v0
.end method
