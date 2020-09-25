.class public abstract Lo/PlaybackStateCompat$CustomAction$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/util/UUID;

.field public onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/onDestroy;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;Lo/onDestroy;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lo/onDestroy;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lo/PlaybackStateCompat$CustomAction$1;->ICustomTabsCallback:Ljava/util/UUID;

    .line 67
    iput-object p2, p0, Lo/PlaybackStateCompat$CustomAction$1;->onNavigationEvent:Lo/onDestroy;

    .line 68
    iput-object p3, p0, Lo/PlaybackStateCompat$CustomAction$1;->onMessageChannelReady:Ljava/util/Set;

    return-void
.end method
