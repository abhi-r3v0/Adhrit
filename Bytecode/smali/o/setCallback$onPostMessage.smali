.class final Lo/setCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private extraCallback:Lo/MediaControllerCompatApi23;

.field onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;


# direct methods
.method constructor <init>(Lo/MediaControllerCompatApi21$TransportControls;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lo/MediaControllerCompatApi24;->ICustomTabsCallback(Ljava/lang/Object;)Lo/MediaControllerCompatApi23;

    move-result-object p1

    iput-object p1, p0, Lo/setCallback$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi23;

    .line 355
    iput-object p2, p0, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 2

    .line 359
    invoke-static {p2}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-static {v1, v0}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    iput-object v1, p0, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 361
    iget-object v1, p0, Lo/setCallback$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi23;

    invoke-interface {v1, p1, p2}, Lo/MediaControllerCompatApi23;->extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 362
    iput-object v0, p0, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void
.end method
