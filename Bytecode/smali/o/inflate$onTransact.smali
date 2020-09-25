.class final Lo/inflate$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Lo/createDragToOpenListener;",
        ">;",
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003j\u0004\u0018\u0001`\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "viesEligibilityStatus",
        "Landroid/util/ArrayMap;",
        "",
        "Lcom/cred/pay/ui/visa/RequestId;",
        "Lcom/cred/pay/repository/visa/ViesEligibilityResponse;",
        "Lcom/cred/pay/ui/visa/EligibilityStatus;",
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
.field private synthetic ICustomTabsCallback:Lo/inflate;

.field private synthetic extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;


# direct methods
.method constructor <init>(Lo/inflate;Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    iput-object p2, p0, Lo/inflate$onTransact;->extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 44
    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    new-array v1, v0, [Lo/addWrite;

    .line 1232
    iget-object v2, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    invoke-virtual {v2}, Lo/inflate;->asBinder()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "cart_value"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 1233
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    .line 1926
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 1928
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1233
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/createDragToOpenListener;

    .line 2137
    iget-boolean v6, v6, Lo/createDragToOpenListener;->extraCallback:Z

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1929
    :cond_2
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    .line 3043
    :goto_2
    new-instance v5, Lo/addWrite;

    const-string v6, "count_vsc_eligible_cards"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v1, v4

    if-eqz p1, :cond_7

    .line 1234
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    .line 1930
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 1932
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1234
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/createDragToOpenListener;

    .line 3138
    iget-boolean v4, v4, Lo/createDragToOpenListener;->onPostMessage:Z

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1933
    :cond_6
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    const/4 v2, 0x2

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "count_vsc_enrolled_card"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 1235
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "vsc_applicable_checkout"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 1231
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "juspay_sdk_vsc_eligibility_response"

    .line 1231
    invoke-static {v0, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1237
    iget-object v0, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    iget-object v1, p0, Lo/inflate$onTransact;->extraCallback:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    .line 6065
    iput-object v1, v0, Lo/inflate;->ICustomTabsService:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    .line 1238
    iget-object v0, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    invoke-static {v0}, Lo/inflate;->onNavigationEvent(Lo/inflate;)V

    .line 1239
    iget-object v0, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    invoke-static {v0, p1}, Lo/inflate;->onMessageChannelReady(Lo/inflate;Landroid/util/ArrayMap;)V

    if-eqz p1, :cond_8

    .line 1241
    iget-object v0, p0, Lo/inflate$onTransact;->ICustomTabsCallback:Lo/inflate;

    invoke-static {v0, p1}, Lo/inflate;->ICustomTabsCallback(Lo/inflate;Landroid/util/ArrayMap;)V

    .line 44
    :cond_8
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
