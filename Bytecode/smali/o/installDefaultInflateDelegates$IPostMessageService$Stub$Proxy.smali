.class final Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/installDefaultInflateDelegates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$2$1$1",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$$special$$inlined$executeOnResume$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OfferSlab;

.field private synthetic extraCallback:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lcom/cred/pay/repository/models/checkout/OfferSlab;Lo/installDefaultInflateDelegates;)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OfferSlab;

    iput-object p2, p0, Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;->extraCallback:Lo/installDefaultInflateDelegates;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1285
    iget-object v0, p0, Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;->extraCallback:Lo/installDefaultInflateDelegates;

    iget-object v1, p0, Lo/installDefaultInflateDelegates$IPostMessageService$Stub$Proxy;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OfferSlab;

    invoke-static {v0, v1}, Lo/installDefaultInflateDelegates;->onPostMessage(Lo/installDefaultInflateDelegates;Lcom/cred/pay/repository/models/checkout/OfferSlab;)V

    .line 40
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method