.class final Lo/inflate$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->onPostMessage()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1679
    iget-object v0, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    .line 2065
    iget-object v0, v0, Lo/inflate;->ICustomTabsService:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3017
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    if-eqz v0, :cond_0

    .line 3042
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    if-eqz v0, :cond_0

    .line 3136
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/Cta;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CtaAction;

    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/CtaAction;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1680
    :goto_0
    iget-object v2, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    .line 4065
    iget-object v2, v2, Lo/inflate;->ICustomTabsService:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    if-eqz v2, :cond_1

    .line 5017
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    if-eqz v2, :cond_1

    .line 5042
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v2, :cond_1

    .line 5108
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    if-eqz v2, :cond_1

    .line 5136
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/Cta;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CtaAction;

    if-eqz v2, :cond_1

    .line 5146
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/CtaAction;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "INSTRUMENT_LIST"

    .line 1680
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1682
    :cond_2
    iget-object v2, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    invoke-static {v2}, Lo/inflate;->asInterface(Lo/inflate;)Lo/setActive;

    move-result-object v2

    new-instance v4, Lo/throwIfInMutationOperation;

    new-instance v5, Lo/inflate$extraCallback$onPostMessage;

    iget-object v6, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    .line 6073
    iget-object v6, v6, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v6, :cond_3

    .line 6918
    iget-object v1, v6, Lo/inflate$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1682
    :cond_3
    invoke-direct {v5, v0, v1}, Lo/inflate$extraCallback$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1683
    iget-object v0, p0, Lo/inflate$warmup;->onMessageChannelReady:Lo/inflate;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Lo/extraCallback;->extraCallback(Lo/inflate;ZZZI)V

    .line 44
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
