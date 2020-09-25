.class final Lo/getAllExperiments$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAllExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private synthetic onNavigationEvent:Lo/getAllExperiments;

.field private final onPostMessage:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getAllExperiments;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lo/getAllExperiments$extraCallback;->onNavigationEvent:Lo/getAllExperiments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lo/getAllExperiments$extraCallback;->ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 310
    iput-object p3, p0, Lo/getAllExperiments$extraCallback;->onPostMessage:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 315
    iget-object v0, p0, Lo/getAllExperiments$extraCallback;->onPostMessage:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getAllExperiments$extraCallback;->onNavigationEvent:Lo/getAllExperiments;

    iget-object v0, v0, Lo/getAllExperiments;->extraCallback:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lo/getAllExperiments$extraCallback;->onNavigationEvent:Lo/getAllExperiments;

    iget-object v0, v0, Lo/getAllExperiments;->extraCallback:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lo/getAllExperiments$extraCallback;->onNavigationEvent:Lo/getAllExperiments;

    iget-object v2, p0, Lo/getAllExperiments$extraCallback;->ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, p0, Lo/getAllExperiments$extraCallback;->onPostMessage:Landroid/view/View;

    iget-object v0, v1, Lo/getAllExperiments;->extraCallback:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    .line 1203
    invoke-virtual/range {v1 .. v6}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 319
    iget-object v0, p0, Lo/getAllExperiments$extraCallback;->onPostMessage:Landroid/view/View;

    invoke-static {v0, p0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lo/getAllExperiments$extraCallback;->onNavigationEvent:Lo/getAllExperiments;

    iget-object v1, p0, Lo/getAllExperiments$extraCallback;->ICustomTabsCallback:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lo/getAllExperiments$extraCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lo/getAllExperiments;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    return-void
.end method
