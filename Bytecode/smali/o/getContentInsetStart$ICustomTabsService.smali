.class final Lo/getContentInsetStart$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onNavigationEvent:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$ICustomTabsService;->onNavigationEvent:Lo/getContentInsetStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 600
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsService;->onNavigationEvent:Lo/getContentInsetStart;

    .line 1077
    iget-object v0, v0, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 600
    new-instance v9, Lo/ensureContentInsets$onPostMessage;

    .line 601
    const-class v2, Lo/setTitleMarginTop;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const/16 v8, 0x12

    move-object v1, v9

    .line 600
    invoke-direct/range {v1 .. v8}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V

    invoke-virtual {v0, v9}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
