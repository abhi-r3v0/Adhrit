.class public final Lo/isActive;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isActive$onPostMessage;
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/os/Handler;

.field final onMessageChannelReady:Lo/setCallback;

.field private onPostMessage:Lo/isActive$onPostMessage;


# direct methods
.method public constructor <init>(Lo/toLegacyStreamType;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p1}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/isActive;->onMessageChannelReady:Lo/setCallback;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/isActive;->extraCallback:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lo/isActive;->onPostMessage:Lo/isActive$onPostMessage;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lo/isActive$onPostMessage;->run()V

    .line 47
    :cond_0
    new-instance v0, Lo/isActive$onPostMessage;

    iget-object v1, p0, Lo/isActive;->onMessageChannelReady:Lo/setCallback;

    invoke-direct {v0, v1, p1}, Lo/isActive$onPostMessage;-><init>(Lo/setCallback;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    iput-object v0, p0, Lo/isActive;->onPostMessage:Lo/isActive$onPostMessage;

    .line 48
    iget-object p1, p0, Lo/isActive;->extraCallback:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
