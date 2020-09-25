.class public final Lo/IResultReceiver$Default;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field final extraCallback:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

.field final onMessageChannelReady:Lo/PlaybackStateCompatApi21$CustomAction;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    .line 40
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/IResultReceiver$Default;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/PlaybackStateCompatApi21$CustomAction;Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/IResultReceiver$Default;->onMessageChannelReady:Lo/PlaybackStateCompatApi21$CustomAction;

    .line 54
    iput-object p2, p0, Lo/IResultReceiver$Default;->extraCallback:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/IResultReceiver$Default;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method
