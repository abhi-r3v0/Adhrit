.class final Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged$mayLaunchUrl;
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
        "com/dreamplug/fabrik/ui/track/TrackFragment$onViewCreated$15$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

.field private synthetic onPostMessage:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnScrollListener$onMessageChannelReady;Lo/isItemChanged$mayLaunchUrl;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onPostMessage:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    iput-object p2, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1344
    iget-object v1, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

    iget-object v1, v1, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    .line 1690
    iget-object v2, v1, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v2, :cond_1

    .line 2000
    iget-object v3, v1, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/RecyclerView$OnFlingListener;

    .line 2050
    iget-object v3, v3, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v3, :cond_0

    .line 3048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 1690
    :goto_0
    invoke-virtual {v2, v3}, Lo/calculateScrollDistance;->onNavigationEvent(Lcom/cred/pay/repository/models/Account;)V

    .line 4000
    :cond_1
    iget-object v2, v1, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/RecyclerView$OnFlingListener;

    .line 5000
    iget-object v1, v1, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$OnFlingListener;

    .line 5050
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_2

    .line 6048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_2

    .line 6062
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    .line 1691
    :cond_3
    invoke-virtual {v2, v1}, Lo/RecyclerView$OnFlingListener;->onPostMessage(Ljava/lang/String;)V

    const-string/jumbo v1, "track_bb_error_case_try_again"

    .line 1345
    invoke-static {v1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1347
    :cond_4
    iget-object v1, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onPostMessage:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    .line 6079
    iget-boolean v1, v1, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onPostMessage:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    new-array v2, v1, [Lo/addWrite;

    const/4 v3, 0x0

    if-nez p1, :cond_5

    const-string p1, "dismiss"

    goto :goto_1

    :cond_5
    const-string/jumbo p1, "try_again"

    .line 7043
    :goto_1
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "type"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x1

    .line 1352
    iget-object v3, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

    iget-object v3, v3, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    invoke-static {v3}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v3

    .line 7050
    iget-object v3, v3, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v3, :cond_6

    .line 8048
    iget-object v3, v3, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v3, :cond_6

    .line 8062
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v3, v0

    .line 9043
    :goto_2
    new-instance v4, Lo/addWrite;

    const-string v5, "id"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, p1

    const/4 p1, 0x2

    .line 1353
    iget-object v3, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

    iget-object v3, v3, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    invoke-static {v3}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v3

    iget-object v4, p0, Lo/isItemChanged$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/isItemChanged$mayLaunchUrl;

    iget-object v4, v4, Lo/isItemChanged$mayLaunchUrl;->onPostMessage:Lo/isItemChanged;

    invoke-static {v4}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v4

    .line 9050
    iget-object v4, v4, Lo/RecyclerView$OnFlingListener;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v4, :cond_7

    .line 10048
    iget-object v4, v4, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v4, :cond_7

    .line 10062
    iget-object v0, v4, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1353
    :cond_7
    invoke-virtual {v3, v0}, Lo/RecyclerView$OnFlingListener;->extraCallback(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 11043
    new-instance v3, Lo/addWrite;

    const-string v4, "position"

    invoke-direct {v3, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, p1

    const-string p1, "pairs"

    .line 1350
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "track_bb_upi_pin_cancel_bottomsheet_cta"

    .line 1348
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 67
    :cond_8
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
