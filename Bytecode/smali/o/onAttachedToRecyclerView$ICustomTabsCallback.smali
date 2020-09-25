.class final Lo/onAttachedToRecyclerView$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAttachedToRecyclerView;-><init>(Lo/onSessionEvent;Lo/setFrom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Landroid/animation/ValueAnimator;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/onAttachedToRecyclerView;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$ICustomTabsCallback;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1066
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1067
    new-instance v1, Lo/onAttachedToRecyclerView$ICustomTabsCallback$onPostMessage;

    invoke-direct {v1, p0}, Lo/onAttachedToRecyclerView$ICustomTabsCallback$onPostMessage;-><init>(Lo/onAttachedToRecyclerView$ICustomTabsCallback;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1072
    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 1102
    new-instance v2, Lo/setDrawerListener$onMessageChannelReady;

    invoke-direct {v2}, Lo/setDrawerListener$onMessageChannelReady;-><init>()V

    .line 1073
    new-instance v3, Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;

    invoke-direct {v3, p0}, Lo/onAttachedToRecyclerView$ICustomTabsCallback$extraCallback;-><init>(Lo/onAttachedToRecyclerView$ICustomTabsCallback;)V

    check-cast v3, Lo/onDisconnectSetValue;

    const-string v4, "func"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    iput-object v3, v2, Lo/setDrawerListener$onMessageChannelReady;->onPostMessage:Lo/onDisconnectSetValue;

    .line 1076
    new-instance v3, Lo/onAttachedToRecyclerView$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v3, p0}, Lo/onAttachedToRecyclerView$ICustomTabsCallback$ICustomTabsCallback;-><init>(Lo/onAttachedToRecyclerView$ICustomTabsCallback;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3045
    iput-object v3, v2, Lo/setDrawerListener$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    .line 1080
    new-instance v3, Lo/onAttachedToRecyclerView$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {v3, p0}, Lo/onAttachedToRecyclerView$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/onAttachedToRecyclerView$ICustomTabsCallback;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3053
    iput-object v3, v2, Lo/setDrawerListener$onMessageChannelReady;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 1105
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 1085
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
