.class public Lo/MediaBrowserCompat$MediaBrowserImplBase;
.super Lo/MediaBrowserCompat$MediaBrowserImplBase$3;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent()V
    .locals 1

    .line 29
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$1;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplBase;)V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;

    return-void
.end method
