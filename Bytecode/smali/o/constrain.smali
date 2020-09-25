.class public final Lo/constrain;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Lo/PlaybackStateCompat;

.field public final onNavigationEvent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lo/PlaybackStateCompat;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lo/constrain;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 83
    iput-object p2, p0, Lo/constrain;->onNavigationEvent:Landroid/widget/LinearLayout;

    return-void
.end method
