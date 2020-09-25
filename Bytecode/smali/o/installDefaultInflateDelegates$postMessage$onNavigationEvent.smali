.class final Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/installDefaultInflateDelegates$postMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onViewCreated$9$1$2$1",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onViewCreated$9$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Cta;

.field private synthetic onPostMessage:Lo/installDefaultInflateDelegates$postMessage;


# direct methods
.method constructor <init>(Lcom/cred/pay/repository/models/checkout/Cta;Lo/installDefaultInflateDelegates$postMessage;)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Cta;

    iput-object p2, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onPostMessage:Lo/installDefaultInflateDelegates$postMessage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 40
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    iget-object p1, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onPostMessage:Lo/installDefaultInflateDelegates$postMessage;

    iget-object p1, p1, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object p1

    .line 2052
    iget-boolean p1, p1, Lo/setHooks;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 1147
    iget-object p1, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onPostMessage:Lo/installDefaultInflateDelegates$postMessage;

    iget-object p1, p1, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->onTransact()V

    goto :goto_0

    .line 1149
    :cond_0
    iget-object p1, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onPostMessage:Lo/installDefaultInflateDelegates$postMessage;

    iget-object p1, p1, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object p1

    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Cta;

    .line 2179
    iget-object p1, p1, Lo/setHooks;->ICustomTabsCallback:Lo/inflate;

    if-nez p1, :cond_1

    const-string v1, "parentViewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const-string v1, "recommendation"

    invoke-virtual {p1, v0, v1}, Lo/inflate;->onMessageChannelReady(Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/String;)V

    .line 40
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
