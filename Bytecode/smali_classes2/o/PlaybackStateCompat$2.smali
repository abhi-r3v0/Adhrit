.class final Lo/PlaybackStateCompat$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/PlaybackStateCompat;


# direct methods
.method constructor <init>(Lo/PlaybackStateCompat;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/PlaybackStateCompat$2;->onPostMessage:Lo/PlaybackStateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lo/PlaybackStateCompat$2;->onPostMessage:Lo/PlaybackStateCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat;->onNavigationEvent(I)V

    .line 273
    iget-object v0, p0, Lo/PlaybackStateCompat$2;->onPostMessage:Lo/PlaybackStateCompat;

    .line 2092
    iget v1, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat;->onPostMessage(I)V

    return-void
.end method
