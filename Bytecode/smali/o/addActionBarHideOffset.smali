.class public final Lo/addActionBarHideOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMeasureWithLargestChildEnabled;


# instance fields
.field private final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/hasDividerBeforeChildAt;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Z

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1015
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lo/addActionBarHideOffset;->onMessageChannelReady:Z

    .line 1057
    iget-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hasDividerBeforeChildAt;

    .line 1058
    invoke-interface {v1}, Lo/hasDividerBeforeChildAt;->extraCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x1

    .line 1049
    iput-boolean v0, p0, Lo/addActionBarHideOffset;->onMessageChannelReady:Z

    .line 1050
    iget-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hasDividerBeforeChildAt;

    .line 1051
    invoke-interface {v1}, Lo/hasDividerBeforeChildAt;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    const/4 v0, 0x1

    .line 1063
    iput-boolean v0, p0, Lo/addActionBarHideOffset;->onPostMessage:Z

    .line 1064
    iget-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hasDividerBeforeChildAt;

    .line 1065
    invoke-interface {v1}, Lo/hasDividerBeforeChildAt;->onMessageChannelReady()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/hasDividerBeforeChildAt;)V
    .locals 1

    .line 1045
    iget-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Lo/hasDividerBeforeChildAt;)V
    .locals 1

    .line 1032
    iget-object v0, p0, Lo/addActionBarHideOffset;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-boolean v0, p0, Lo/addActionBarHideOffset;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 1035
    invoke-interface {p1}, Lo/hasDividerBeforeChildAt;->onMessageChannelReady()V

    return-void

    .line 1036
    :cond_0
    iget-boolean v0, p0, Lo/addActionBarHideOffset;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 1037
    invoke-interface {p1}, Lo/hasDividerBeforeChildAt;->ICustomTabsCallback()V

    return-void

    .line 1039
    :cond_1
    invoke-interface {p1}, Lo/hasDividerBeforeChildAt;->extraCallback()V

    return-void
.end method
