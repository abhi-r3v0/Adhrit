.class final Lo/getOverflowIcon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final ICustomTabsCallback:Lo/setOverflowIcon;

.field private final extraCallback:Ljava/util/List;

.field private final onMessageChannelReady:Z

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/setOverflowIcon;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getOverflowIcon;->ICustomTabsCallback:Lo/setOverflowIcon;

    iput-object p2, p0, Lo/getOverflowIcon;->extraCallback:Ljava/util/List;

    iput-boolean p3, p0, Lo/getOverflowIcon;->onPostMessage:Z

    iput-boolean p4, p0, Lo/getOverflowIcon;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lo/getOverflowIcon;->ICustomTabsCallback:Lo/setOverflowIcon;

    iget-object v1, p0, Lo/getOverflowIcon;->extraCallback:Ljava/util/List;

    iget-boolean v2, p0, Lo/getOverflowIcon;->onPostMessage:Z

    iget-boolean v3, p0, Lo/getOverflowIcon;->onMessageChannelReady:Z

    invoke-static {v0, v1, v2, v3, p1}, Lo/setOverflowIcon;->onMessageChannelReady(Lo/setOverflowIcon;Ljava/util/List;ZZLandroid/animation/ValueAnimator;)V

    return-void
.end method
