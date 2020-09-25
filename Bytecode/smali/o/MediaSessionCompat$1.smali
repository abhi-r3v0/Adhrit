.class public final Lo/MediaSessionCompat$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$1$extraCallback;,
        Lo/MediaSessionCompat$1$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/MediaSessionCompat$1;->onMessageChannelReady:Z

    return-void
.end method
