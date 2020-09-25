.class public final Lo/dispatchAttachedToWindow$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchAttachedToWindow$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;-><init>()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/nba/NBAFragment$animationListener$1",
        "Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;",
        "onCompletionAnimationEnd",
        "",
        "index",
        "",
        "onLottieAnimationEnd",
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
.field private synthetic onMessageChannelReady:Lo/dispatchAttachedToWindow;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lo/dispatchAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 2

    .line 432
    iget-object v0, p0, Lo/dispatchAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lo/dispatchAttachedToWindow$onMessageChannelReady;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/dispatchDetachedFromWindow;->onPostMessage(I)V

    :cond_1
    return-void
.end method
