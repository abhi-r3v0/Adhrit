.class final Lo/recycleViewsFromEnd$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleViewsFromEnd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/sendQueueTitle;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/transition/ChangeBounds;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/recycleViewsFromEnd$newSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/recycleViewsFromEnd$newSession;

    invoke-direct {v0}, Lo/recycleViewsFromEnd$newSession;-><init>()V

    sput-object v0, Lo/recycleViewsFromEnd$newSession;->onNavigationEvent:Lo/recycleViewsFromEnd$newSession;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1290
    new-instance v0, Lo/sendQueueTitle;

    invoke-direct {v0}, Lo/sendQueueTitle;-><init>()V

    .line 1291
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    const-wide/16 v1, 0x12c

    .line 1292
    invoke-virtual {v0, v1, v2}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    return-object v0
.end method
