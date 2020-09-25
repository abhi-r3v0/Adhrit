.class final Lo/getOptionsList$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOptionsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

.field extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field onMessageChannelReady:I

.field onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field onPostMessage:I


# direct methods
.method public constructor <init>(Lo/MediaBrowserCompat$ServiceBinderWrapper;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1144
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 49
    iput-object v0, p0, Lo/getOptionsList$ICustomTabsCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    iput v0, p0, Lo/getOptionsList$ICustomTabsCallback;->onMessageChannelReady:I

    .line 2138
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 51
    iput-object v0, p0, Lo/getOptionsList$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 2163
    iget p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    .line 52
    iput p1, p0, Lo/getOptionsList$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method
