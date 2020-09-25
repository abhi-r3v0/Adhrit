.class final Lo/isItemChanged$warmup$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged$warmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "isPrimary",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/track/TrackFragment$onViewCreated$10$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addWrite;

.field private synthetic onNavigationEvent:Lo/isItemChanged$warmup;


# direct methods
.method constructor <init>(Lo/addWrite;Lo/isItemChanged$warmup;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->extraCallback:Lo/addWrite;

    iput-object p2, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->onNavigationEvent:Lo/isItemChanged$warmup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1212
    iget-object v0, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->onNavigationEvent:Lo/isItemChanged$warmup;

    iget-object v0, v0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v0

    .line 2156
    iget-object v0, v0, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->onNavigationEvent:Lo/isItemChanged$warmup;

    iget-object v0, v0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    .line 3077
    iget-object v0, v0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v1, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->extraCallback:Lo/addWrite;

    .line 4028
    iget-object v1, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1213
    check-cast v1, Lcom/cred/pay/repository/models/VpaAccount;

    .line 4048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 1213
    invoke-virtual {v0, v1}, Lo/calculateScrollDistance;->onMessageChannelReady(Lcom/cred/pay/repository/models/Account;)V

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "dismiss"

    goto :goto_0

    :cond_1
    const-string p1, "delete"

    .line 5043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "type"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x1

    .line 1219
    iget-object v2, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->extraCallback:Lo/addWrite;

    .line 6028
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1219
    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    .line 6048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6062
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 7043
    new-instance v3, Lo/addWrite;

    const-string v4, "id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, p1

    const/4 p1, 0x2

    .line 1220
    iget-object v2, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->onNavigationEvent:Lo/isItemChanged$warmup;

    iget-object v2, v2, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-static {v2}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v2

    iget-object v3, p0, Lo/isItemChanged$warmup$ICustomTabsCallback;->extraCallback:Lo/addWrite;

    .line 8028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1220
    check-cast v3, Lcom/cred/pay/repository/models/VpaAccount;

    .line 8048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 8062
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1220
    invoke-virtual {v2, v3}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9043
    new-instance v3, Lo/addWrite;

    const-string v4, "position"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, p1

    const-string p1, "pairs"

    .line 1217
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "track_bb_delete_confirm_cta"

    .line 1215
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 67
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
