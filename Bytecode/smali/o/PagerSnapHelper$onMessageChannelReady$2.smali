.class final Lo/PagerSnapHelper$onMessageChannelReady$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PagerSnapHelper$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/lang/Void;",
        "kotlin.jvm.PlatformType",
        "onSuccess",
        "com/dreamplug/fabrik/ui/lifestyle/game/security/GameScoreStream$upload$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/PagerSnapHelper$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/PagerSnapHelper$onMessageChannelReady;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/PagerSnapHelper$onMessageChannelReady$2;->ICustomTabsCallback:Lo/PagerSnapHelper$onMessageChannelReady;

    iput-object p2, p0, Lo/PagerSnapHelper$onMessageChannelReady$2;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    const-string p1, "game-security"

    const-string/jumbo v0, "score upload sucess"

    .line 1047
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1049
    iget-object v1, p0, Lo/PagerSnapHelper$onMessageChannelReady$2;->onMessageChannelReady:Ljava/lang/String;

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "game_id"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1048
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "firebase_submit_score_success"

    .line 1048
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1051
    iget-object p1, p0, Lo/PagerSnapHelper$onMessageChannelReady$2;->ICustomTabsCallback:Lo/PagerSnapHelper$onMessageChannelReady;

    iget-object p1, p1, Lo/PagerSnapHelper$onMessageChannelReady;->ICustomTabsCallback:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void
.end method
