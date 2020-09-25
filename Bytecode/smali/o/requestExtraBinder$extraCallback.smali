.class final Lo/requestExtraBinder$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/Fragment$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field extraCallback:I

.field final onMessageChannelReady:Lo/binderDied;

.field final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/binderDied;Z)V
    .locals 0

    .line 2983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2984
    iput-boolean p2, p0, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    .line 2985
    iput-object p1, p0, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 2995
    iget v0, p0, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    if-eqz v0, :cond_0

    return-void

    .line 2999
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-object v0, v0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->onMessageChannelReady()V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 3009
    iget v0, p0, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    return-void
.end method

.method final onMessageChannelReady()V
    .locals 5

    .line 3026
    iget v0, p0, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3027
    :goto_0
    iget-object v2, p0, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-object v2, v2, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    .line 3896
    iget-object v2, v2, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v2

    .line 3028
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 3029
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$onNavigationEvent;)V

    if-eqz v0, :cond_1

    .line 3030
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3031
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    .line 3034
    :cond_2
    iget-object v2, p0, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-object v2, v2, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v3, p0, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-boolean v4, p0, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    xor-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Lo/binderDied;ZZZ)V

    return-void
.end method
