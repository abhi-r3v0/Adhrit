.class public final Lo/setSubUiVisibilityListener$asBinder;
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

.field private synthetic onMessageChannelReady:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$asBinder;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    iput-object p2, p0, Lo/setSubUiVisibilityListener$asBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "contacts-sdk"

    const-string v1, "db contact update requested"

    .line 114
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lo/setSubUiVisibilityListener$asBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setFillViewport;

    .line 116
    iget-object v2, p0, Lo/setSubUiVisibilityListener$asBinder;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v2}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v2

    const-string v3, "entity"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    iget-object v3, v1, Lo/setFillViewport;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2026
    iget-object v4, v1, Lo/setFillViewport;->onTransact:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1058
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2036
    :goto_1
    iget-object v6, v1, Lo/setFillViewport;->warmup:Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 1059
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3028
    :cond_2
    iget-boolean v1, v1, Lo/setFillViewport;->asBinder:Z

    .line 1060
    invoke-virtual {v2, v4, v1, v5, v3}, Lo/setOnScrollChangeListener;->onPostMessage(IZZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
