.class public abstract Lo/calculateDiff;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0016\u001a\u00020\u0017H&J\u0008\u0010\u0018\u001a\u00020\u0017H\u0014J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0004J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/templates/DigestBaseView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "index",
        "",
        "storyState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates;",
        "(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;ILandroidx/lifecycle/MutableLiveData;)V",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "getIndex",
        "()I",
        "stateObserver",
        "Landroidx/lifecycle/Observer;",
        "getStoryState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "view",
        "Landroid/view/View;",
        "initView",
        "",
        "onDetachedFromWindow",
        "onStoryExited",
        "onStoryPaused",
        "onStoryResumed",
        "onStorySelected",
        "setBackground",
        "backgroundImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "setView",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/diffPartial;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

.field final onMessageChannelReady:I

.field private final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/diffPartial;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lo/calculateDiff;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;ILo/setActive;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;ILo/setActive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
            "I",
            "Lo/setActive<",
            "Lo/diffPartial;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iput p3, p0, Lo/calculateDiff;->onMessageChannelReady:I

    iput-object p4, p0, Lo/calculateDiff;->onNavigationEvent:Lo/setActive;

    .line 18
    new-instance p1, Lo/calculateDiff$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/calculateDiff$onNavigationEvent;-><init>(Lo/calculateDiff;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/calculateDiff;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    .line 34
    iget-object p2, p0, Lo/calculateDiff;->onNavigationEvent:Lo/setActive;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lo/calculateDiff;->onMessageChannelReady()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(I)V
    .locals 0

    return-void
.end method

.method public extraCallback()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lo/calculateDiff;->onNavigationEvent:Lo/setActive;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/calculateDiff;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    :cond_0
    return-void
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(I)V
    .locals 0

    return-void
.end method

.method protected final onNavigationEvent(Lo/setSpeed;)V
    .locals 18

    move-object/from16 v8, p1

    const-string v0, "backgroundImage"

    invoke-static {v8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p0

    .line 58
    iget-object v0, v9, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 1032
    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v10, :cond_1

    .line 1105
    iget-object v1, v10, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    move-object/from16 v0, p1

    .line 59
    invoke-static/range {v0 .. v7}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 2104
    :cond_0
    iget-object v12, v10, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 60
    move-object v11, v8

    check-cast v11, Landroid/view/View;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 3010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c

    .line 60
    invoke-static/range {v11 .. v17}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method

.method public onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/calculateDiff;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/calculateDiff;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/calculateDiff;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/calculateDiff;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onPostMessage(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lo/calculateDiff;->onNavigationEvent(Lo/setSpeed;)V

    .line 54
    :cond_0
    iget p1, p0, Lo/calculateDiff;->onMessageChannelReady:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
