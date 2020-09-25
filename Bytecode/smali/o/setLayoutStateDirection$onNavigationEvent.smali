.class public final Lo/setLayoutStateDirection$onNavigationEvent;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutStateDirection;->ICustomTabsCallback(Ljava/lang/String;ZJ)V
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
.field public final synthetic ICustomTabsCallback:Lo/setLayoutStateDirection;

.field private synthetic extraCallback:J

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/setLayoutStateDirection;Ljava/lang/String;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lo/setLayoutStateDirection$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutStateDirection;

    iput-object p2, p0, Lo/setLayoutStateDirection$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iput-boolean p3, p0, Lo/setLayoutStateDirection$onNavigationEvent;->onPostMessage:Z

    iput-wide p4, p0, Lo/setLayoutStateDirection$onNavigationEvent;->extraCallback:J

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean p1, p0, Lo/setLayoutStateDirection$onNavigationEvent;->onPostMessage:Z

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    .line 91
    iget-wide v1, p0, Lo/setLayoutStateDirection$onNavigationEvent;->extraCallback:J

    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lo/setLayoutStateDirection$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutStateDirection;

    invoke-static {p1}, Lo/setLayoutStateDirection;->onNavigationEvent(Lo/setLayoutStateDirection;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/setLayoutStateDirection$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lo/setLayoutStateDirection$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutStateDirection;

    invoke-static {p1}, Lo/setLayoutStateDirection;->onNavigationEvent(Lo/setLayoutStateDirection;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final run()V
    .locals 6

    .line 1088
    iget-object v0, p0, Lo/setLayoutStateDirection$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutStateDirection;

    invoke-static {v0}, Lo/setLayoutStateDirection;->ICustomTabsCallback(Lo/setLayoutStateDirection;)Lo/toLegacyStreamType;

    move-result-object v0

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "getLifecycleOwner().lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1134
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1135
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 1089
    iget-object v2, p0, Lo/setLayoutStateDirection$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutStateDirection;

    invoke-virtual {v2}, Lo/setLayoutStateDirection;->onPostMessage()V

    .line 1137
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 1138
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 1139
    new-instance v2, Lcom/dreamplug/widget/ErrorView$show$1$onAnimationEnd$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/widget/ErrorView$show$1$onAnimationEnd$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setLayoutStateDirection$onNavigationEvent;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1140
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1142
    :cond_2
    :goto_0
    new-instance v1, Lo/handleUpdate;

    invoke-direct {v1, v3, v0}, Lo/handleUpdate;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
