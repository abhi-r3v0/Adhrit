.class final Lo/getSpanGroupIndex$extraCommand;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSpanGroupIndex;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic ICustomTabsCallback:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$extraCommand;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 79
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1523
    iget-object p1, p0, Lo/getSpanGroupIndex$extraCommand;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v2

    .line 2328
    iget-object v2, v2, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 3320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 2328
    :goto_0
    check-cast v2, Lo/onAnchorReady;

    if-eqz v2, :cond_4

    .line 2330
    sget-object v3, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "amount"

    goto :goto_1

    .line 2333
    :cond_1
    sget-object v3, Lo/onAnchorReady$onNavigationEvent;->extraCallback:Lo/onAnchorReady$onNavigationEvent;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "emi"

    goto :goto_1

    .line 2336
    :cond_2
    sget-object v3, Lo/onAnchorReady$onPostMessage;->onNavigationEvent:Lo/onAnchorReady$onPostMessage;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "bank"

    goto :goto_1

    .line 2337
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    const-string v2, "NA"

    .line 4043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string/jumbo v5, "screen"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 1523
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_withdraw_click_help"

    .line 1523
    invoke-virtual {p1, v0, v2}, Lo/getSpanGroupIndex;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1524
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lo/getSpanGroupIndex$extraCommand;->ICustomTabsCallback:Lo/getSpanGroupIndex;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    const v1, 0x7f1304ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string/jumbo v0, "support/articles/43000566210?chat=disabled"

    invoke-static {v4, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3f5

    const-string/jumbo v6, "web"

    invoke-static/range {v5 .. v13}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 79
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
