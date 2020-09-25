.class final Lo/onMediaButtonEvent$2;
.super Landroid/media/VolumeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onMediaButtonEvent;->onPostMessage(IIILo/onMediaButtonEvent$onMessageChannelReady;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/onMediaButtonEvent$onMessageChannelReady;


# direct methods
.method constructor <init>(IIILo/onMediaButtonEvent$onMessageChannelReady;)V
    .locals 0

    .line 27
    iput-object p4, p0, Lo/onMediaButtonEvent$2;->extraCallback:Lo/onMediaButtonEvent$onMessageChannelReady;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final onAdjustVolume(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/onMediaButtonEvent$2;->extraCallback:Lo/onMediaButtonEvent$onMessageChannelReady;

    invoke-interface {v0, p1}, Lo/onMediaButtonEvent$onMessageChannelReady;->extraCallback(I)V

    return-void
.end method

.method public final onSetVolumeTo(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/onMediaButtonEvent$2;->extraCallback:Lo/onMediaButtonEvent$onMessageChannelReady;

    invoke-interface {v0, p1}, Lo/onMediaButtonEvent$onMessageChannelReady;->ICustomTabsCallback(I)V

    return-void
.end method
