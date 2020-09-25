.class final Lo/PlaybackStateCompat$State$5;
.super Lo/MediaSessionCompat$MediaSessionImplApi18$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 172
    invoke-direct {p0, v0, v1}, Lo/MediaSessionCompat$MediaSessionImplApi18$1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    .line 175
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    .line 176
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method
