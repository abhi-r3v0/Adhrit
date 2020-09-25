.class final Lo/FullLifecycleObserverAdapter$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FullLifecycleObserverAdapter;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/contacts/festives/GreetingCarousalFragment$onViewCreated$1$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/FullLifecycleObserverAdapter;


# direct methods
.method constructor <init>(Lo/FullLifecycleObserverAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FullLifecycleObserverAdapter$onTransact;->onPostMessage:Lo/FullLifecycleObserverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$onTransact;->onPostMessage:Lo/FullLifecycleObserverAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$onTransact;->onPostMessage:Lo/FullLifecycleObserverAdapter;

    invoke-static {v0}, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;

    move-result-object v0

    iget-object v1, p0, Lo/FullLifecycleObserverAdapter$onTransact;->onPostMessage:Lo/FullLifecycleObserverAdapter;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {v1, v2}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getUseCompatPadding;

    const-string v2, "creativeList"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget v1, v1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    add-int/lit8 v2, v1, -0x1

    .line 2054
    invoke-virtual {v0, v2}, Lo/onActivityPostStarted;->onPostMessage(I)V

    .line 2055
    invoke-virtual {v0, v1}, Lo/onActivityPostStarted;->onMessageChannelReady(I)V

    add-int/lit8 v1, v1, 0x1

    .line 2056
    invoke-virtual {v0, v1}, Lo/onActivityPostStarted;->onPostMessage(I)V

    :cond_0
    return-void
.end method
