.class public final Lo/sendRepeatMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTextSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setAutoSizeTextTypeWithDefaults;
    .locals 1

    .line 1006
    new-instance v0, Lo/onPlaybackPositionUpdate;

    invoke-direct {v0}, Lo/onPlaybackPositionUpdate;-><init>()V

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setAutoSizeTextTypeWithDefaults;
    .locals 1

    .line 1011
    new-instance v0, Lo/sendEvent;

    invoke-direct {v0}, Lo/sendEvent;-><init>()V

    return-object v0
.end method
