.class public final Lo/getOnFlingListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOnFlingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardAdapter$Companion;",
        "",
        "()V",
        "LEADERBOARD_CARD_ITEM",
        "",
        "LEADERBOARD_HEADER",
        "LEADERBOARD_ITEM",
        "LEADERBOARD_LEADER",
        "LEADERBOARD_LIST_HEADER",
        "LEADERBOARD_PRIZES",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/addItemDecoration$onPostMessage;


# instance fields
.field public final ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/onVerificationFailed;

.field public final onMessageChannelReady:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getOnFlingListener$onNavigationEvent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/setExecutor;Lo/setBreadcrumbEventReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onVerificationFailed;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/setExecutor;",
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/getOnFlingListener$onNavigationEvent;->extraCallback:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/getOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/getOnFlingListener$onNavigationEvent;->onPostMessage:Lo/setExecutor;

    iput-object p4, p0, Lo/getOnFlingListener$onNavigationEvent;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Z)V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getOnFlingListener$onNavigationEvent;->onPostMessage:Lo/setExecutor;

    invoke-virtual {v0}, Lo/CrashlyticsNativeComponent;->onPostMessage()Z

    move-result v0

    iget-object v1, p0, Lo/getOnFlingListener$onNavigationEvent;->onPostMessage:Lo/setExecutor;

    invoke-virtual {v1, p1}, Lo/CrashlyticsNativeComponent;->onMessageChannelReady(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3000
    iget-object p1, p0, Lo/getOnFlingListener$onNavigationEvent;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {p1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lo/PagerSnapHelper$extraCallback;

    invoke-direct {v0, p0}, Lo/PagerSnapHelper$extraCallback;-><init>(Lo/getOnFlingListener$onNavigationEvent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
