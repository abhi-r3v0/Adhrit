.class public final Lo/fromCustomAction;
.super Lo/PlaybackStateCompat$CustomAction$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromCustomAction$extraCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Lo/fromCustomAction$extraCallback;)V
    .locals 2

    .line 70
    iget-object v0, p1, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady:Ljava/util/UUID;

    iget-object v1, p1, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-object p1, p1, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lo/PlaybackStateCompat$CustomAction$1;-><init>(Ljava/util/UUID;Lo/onDestroy;Ljava/util/Set;)V

    return-void
.end method
