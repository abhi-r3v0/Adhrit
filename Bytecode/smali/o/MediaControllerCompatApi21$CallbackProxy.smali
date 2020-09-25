.class public abstract Lo/MediaControllerCompatApi21$CallbackProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;,
        Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompatApi21$CallbackProxy;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V
.end method

.method public abstract onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;
.end method

.method public abstract onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V
.end method
