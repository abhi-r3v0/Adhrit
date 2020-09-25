.class public final Lo/setSubUiVisibilityListener$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setSubUiVisibilityListener;

.field private synthetic onNavigationEvent:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$onPostMessage;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    iput-object p2, p0, Lo/setSubUiVisibilityListener$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "contacts-sdk"

    const-string v1, "db contact push requested"

    .line 100
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setFillViewport;

    .line 1028
    iget-boolean v2, v1, Lo/setFillViewport;->asBinder:Z

    if-nez v2, :cond_1

    .line 1030
    iget-boolean v2, v1, Lo/setFillViewport;->asInterface:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object v2, p0, Lo/setSubUiVisibilityListener$onPostMessage;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v2}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lo/setFillViewport;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lo/setOnScrollChangeListener;->onPostMessage(Ljava/util/List;)V

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    iget-object v2, p0, Lo/setSubUiVisibilityListener$onPostMessage;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v2}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v2

    const-string v3, "contact"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    iget-object v3, v1, Lo/setFillViewport;->onMessageChannelReady:Ljava/lang/String;

    .line 2022
    iget-object v1, v1, Lo/setFillViewport;->ICustomTabsCallback:Ljava/lang/String;

    .line 1049
    invoke-virtual {v2, v3, v1}, Lo/setOnScrollChangeListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onPostMessage;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v0

    iget-object v1, p0, Lo/setSubUiVisibilityListener$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/setOnScrollChangeListener;->onPostMessage(Ljava/util/List;)V

    return-void
.end method
