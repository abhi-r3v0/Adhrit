.class public Lo/getPaymentLinkIframe;
.super Lo/setClientAuthToken;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

.field private onPostMessage:Ljava/lang/String;

.field private onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setClientAuthToken;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getPaymentLinkIframe;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService()Lo/getFinanceCharges$onPostMessage;
    .locals 1

    iget-object v0, p0, Lo/getPaymentLinkIframe;->onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getPaymentLinkIframe;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final getInterfaceDescriptor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/getPaymentLinkIframe;->extraCallback:Ljava/util/List;

    return-object v0
.end method

.method public final mayLaunchUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getPaymentLinkIframe;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getPaymentLinkIframe;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getPaymentLinkIframe;->onMessageChannelReady:Ljava/lang/String;

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

    iput-object p1, p0, Lo/getPaymentLinkIframe;->extraCallback:Ljava/util/List;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getPaymentLinkIframe;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public final onNavigationEvent(Lo/getFinanceCharges$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/getPaymentLinkIframe;->onNavigationEvent:Lo/getFinanceCharges$onPostMessage;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getPaymentLinkIframe;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getPaymentLinkIframe;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method
