.class final Lo/ensureTopGlow$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureTopGlow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/ensureTopGlow;


# direct methods
.method constructor <init>(Lo/ensureTopGlow;)V
    .locals 0

    iput-object p1, p0, Lo/ensureTopGlow$onNavigationEvent;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/ensureTopGlow$onNavigationEvent;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lo/ensureTopGlow$onNavigationEvent;->onNavigationEvent:Lo/ensureTopGlow;

    .line 1029
    iget-object v0, v0, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    if-nez v0, :cond_0

    const-string v1, "pagerAdapter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lo/ensureTopGlow$onNavigationEvent;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v1}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object v1

    .line 1627
    iget v1, v1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 113
    invoke-virtual {v0, v1}, Lo/ensureBottomGlow;->onMessageChannelReady(I)V

    :cond_1
    return-void
.end method
