.class public Lo/setPaymentLinkWeb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Lo/getRewardsClosingBalance;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private asBinder:Ljava/lang/String;

.field private asInterface:Ljava/lang/String;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Landroid/os/Bundle;

.field private newSession:Ljava/lang/Object;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setPaymentLinkWeb;->getInterfaceDescriptor:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/getFinanceCharges$onPostMessage;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsService()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->onTransact:Ljava/lang/Double;

    return-object v0
.end method

.method public final asInterface(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->asBinder:Ljava/lang/String;

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsService:Z

    return-void
.end method

.method public final extraCallback(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public final extraCommand()Z
    .locals 1

    iget-boolean v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsService:Z

    return v0
.end method

.method public final getInterfaceDescriptor()Lo/getRewardsClosingBalance;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub:Lo/getRewardsClosingBalance;

    return-object v0
.end method

.method public final mayLaunchUrl()Z
    .locals 1

    iget-boolean v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub$Proxy:Z

    return v0
.end method

.method public final newSession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setPaymentLinkWeb;->extraCallback:Ljava/util/List;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->onTransact:Ljava/lang/Double;

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/setPaymentLinkWeb;->extraCallback:Ljava/util/List;

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->newSession:Ljava/lang/Object;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final onNavigationEvent(Lo/getFinanceCharges$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

    return-void
.end method

.method public final onNavigationEvent(Lo/getRewardsClosingBalance;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub:Lo/getRewardsClosingBalance;

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/setPaymentLinkWeb;->asInterface:Ljava/lang/String;

    return-void
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->asInterface:Ljava/lang/String;

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final postMessage()V
    .locals 0

    return-void
.end method

.method public final requestPostMessageChannel()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->getInterfaceDescriptor:Landroid/os/Bundle;

    return-object v0
.end method

.method public final updateVisuals()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->newSession:Ljava/lang/Object;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPaymentLinkWeb;->asBinder:Ljava/lang/String;

    return-object v0
.end method
