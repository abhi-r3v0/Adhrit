.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$onMessageChannelReady;
.super Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation

    .line 310
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-object p1
.end method

.method final onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-object p1
.end method
