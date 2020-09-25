.class public final Lo/AsyncDifferConfig$Builder$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onMoved$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/link/CardLinkFragment$failureSheetListener$1",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkFailureBottomSheet$BottomSheetInterface;",
        "onIgnore",
        "",
        "onRetry",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string v3, "cta_type"

    const-string/jumbo v4, "skip"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "pairs"

    .line 97
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "link_card_fail_screen_cta"

    .line 97
    invoke-static {v1, v2}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    iget-object v1, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    .line 7000
    iget-object v1, v1, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 100
    invoke-static {v1, v2, v0, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 104
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->onTransact(Lo/AsyncDifferConfig$Builder;)Lo/onMoved;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 10

    .line 80
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    .line 1032
    iget-object v0, v0, Lo/getCurrentList;->asBinder:Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pairs"

    const-string v2, "flow_status"

    const/4 v3, 0x1

    const-string/jumbo v4, "retry"

    const-string v5, "cta_type"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "link_card_fail_screen_cta"

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCurrentList;->ICustomTabsCallback()V

    new-array v0, v7, [Lo/addWrite;

    .line 2043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v0, v6

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "resume"

    invoke-direct {v4, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 82
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 82
    invoke-static {v8, v1}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->asBinder(Lo/AsyncDifferConfig$Builder;)V

    new-array v0, v7, [Lo/addWrite;

    .line 4043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v0, v6

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "restart"

    invoke-direct {v4, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 88
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 88
    invoke-static {v8, v1}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    :goto_1
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onMessageChannelReady;->onNavigationEvent:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->onTransact(Lo/AsyncDifferConfig$Builder;)Lo/onMoved;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
