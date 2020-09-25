.class public final Lo/ItemTouchHelper$Callback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ItemTouchHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/StashNameDialog$Companion;",
        "",
        "()V",
        "TYPE",
        "",
        "UPDATE_NAME_REQUEST_CODE",
        "",
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
.field private final ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

.field private final onMessageChannelReady:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ItemTouchHelper$Callback$onPostMessage;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iput-object p2, p0, Lo/ItemTouchHelper$Callback$onPostMessage;->onMessageChannelReady:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 4

    .line 2000
    iget-object v0, p0, Lo/ItemTouchHelper$Callback$onPostMessage;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iget-object v1, p0, Lo/ItemTouchHelper$Callback$onPostMessage;->onMessageChannelReady:Landroid/os/Bundle;

    const-string v2, "session_id"

    .line 3000
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v3, v0, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeScrollRange$extraCallback;

    iget-object v2, v0, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v2, v2, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_2
    invoke-static {v1}, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-static {v3, v2}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v0, v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    invoke-static {v0, v1}, Lo/extraCallback;->onMessageChannelReady(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
