.class final Lo/AppBarLayout$ScrollingViewBehavior;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Ljava/lang/Object;

.field private final synthetic onMessageChannelReady:Ljava/lang/Object;

.field private final synthetic onNavigationEvent:Ljava/lang/Object;

.field private final synthetic onPostMessage:I

.field private final synthetic onTransact:Lo/HideBottomViewOnScrollBehavior;


# direct methods
.method constructor <init>(Lo/HideBottomViewOnScrollBehavior;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    iput p2, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onPostMessage:I

    iput-object p3, p0, Lo/AppBarLayout$ScrollingViewBehavior;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onNavigationEvent:Ljava/lang/Object;

    iput-object p5, p0, Lo/AppBarLayout$ScrollingViewBehavior;->extraCallback:Ljava/lang/Object;

    iput-object p6, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onMessageChannelReady:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 2
    iget-object v0, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    iget-object v0, v0, Lo/HideBottomViewOnScrollBehavior;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lo/setChipIconEnabled;->INotificationSideChannel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lo/HideBottomViewOnScrollBehavior;->extraCallback(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    invoke-static {v1}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;)C

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    invoke-virtual {v1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStartIconTintList;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    const/16 v2, 0x43

    .line 8
    invoke-static {v1, v2}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;C)C

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    const/16 v2, 0x63

    .line 10
    invoke-static {v1, v2}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;C)C

    .line 11
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    invoke-static {v1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(Lo/HideBottomViewOnScrollBehavior;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 12
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    const-wide/16 v2, 0x7949

    invoke-static {v1, v2, v3}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(Lo/HideBottomViewOnScrollBehavior;J)J

    .line 13
    :cond_3
    iget v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onPostMessage:I

    const-string v2, "01VDIWEA?"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    .line 15
    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;)C

    move-result v2

    iget-object v3, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onTransact:Lo/HideBottomViewOnScrollBehavior;

    .line 16
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(Lo/HideBottomViewOnScrollBehavior;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lo/AppBarLayout$ScrollingViewBehavior;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v7, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onNavigationEvent:Ljava/lang/Object;

    iget-object v8, p0, Lo/AppBarLayout$ScrollingViewBehavior;->extraCallback:Ljava/lang/Object;

    iget-object v9, p0, Lo/AppBarLayout$ScrollingViewBehavior;->onMessageChannelReady:Ljava/lang/Object;

    .line 17
    invoke-static {v5, v6, v7, v8, v9}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_4

    .line 19
    iget-object v1, p0, Lo/AppBarLayout$ScrollingViewBehavior;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_4
    iget-object v0, v0, Lo/setBackgroundTintList;->extraCallback:Lo/setIconResource;

    const-wide/16 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lo/setIconResource;->extraCallback(Ljava/lang/String;J)V

    return-void
.end method
