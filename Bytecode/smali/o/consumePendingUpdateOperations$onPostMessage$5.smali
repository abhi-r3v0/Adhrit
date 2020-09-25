.class public final Lo/consumePendingUpdateOperations$onPostMessage$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureRightGlow$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/consumePendingUpdateOperations$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormEntity$onTextChange$2$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "onChange",
        "",
        "text",
        "",
        "sectionId",
        "fieldId",
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
.field private synthetic onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;


# direct methods
.method constructor <init>(Lo/consumePendingUpdateOperations$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sectionId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldId"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object v0, v0, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 1024
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 37
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeOnScrollListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, v0, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    .line 38
    :cond_1
    iget-object v2, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object v2, v2, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 2024
    iget-object v2, v2, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 38
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeOnScrollListener;

    if-eqz v2, :cond_2

    .line 2110
    iget-object v2, v2, Lo/removeOnScrollListener;->onPostMessage:Ljava/util/List;

    if-nez v2, :cond_3

    .line 38
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/List;

    .line 39
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 42
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object v3, v3, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 3021
    iget-object v3, v3, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 3067
    iget-object v3, v3, Lo/pullGlows;->warmup:Lo/setActive;

    .line 3320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 43
    :goto_0
    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 44
    check-cast v3, Ljava/lang/Iterable;

    .line 530
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lo/StaggeredGridLayoutManager;

    .line 45
    instance-of v8, v7, Lo/ensureRightGlow;

    if-eqz v8, :cond_6

    check-cast v7, Lo/ensureRightGlow;

    .line 4070
    iget-object v7, v7, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 5063
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 45
    invoke-static {v7, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    goto :goto_2

    :cond_7
    move-object v6, v5

    .line 531
    :goto_2
    check-cast v6, Lo/StaggeredGridLayoutManager;

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    check-cast v6, Lo/ensureRightGlow;

    if-eqz v6, :cond_9

    const-string v3, "<set-?>"

    .line 47
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5071
    iput-object p1, v6, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    .line 48
    :cond_9
    iget-object p1, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 6024
    iget-object p1, p1, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 48
    new-instance v3, Lo/removeOnScrollListener;

    invoke-direct {v3, v0, v2}, Lo/removeOnScrollListener;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 6027
    iget-object p1, p1, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 49
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz p1, :cond_10

    .line 6039
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;

    if-eqz p1, :cond_10

    .line 6055
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/InputData;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_10

    .line 49
    check-cast p1, Ljava/lang/Iterable;

    .line 532
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 533
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 50
    iget-object p3, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object p3, p3, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 7024
    iget-object p3, p3, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 7063
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/removeOnScrollListener;

    if-eqz p3, :cond_d

    .line 7109
    iget-object p3, p3, Lo/removeOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p3, :cond_d

    const-string v0, "$this$getOrNull"

    .line 50
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$lastIndex"

    .line 7266
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8210
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_c

    .line 7266
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_4

    :cond_c
    move-object p3, v5

    .line 50
    :goto_4
    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_e

    :cond_d
    const-string p3, ""

    .line 51
    :cond_e
    invoke-virtual {p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onPostMessage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    const/4 v1, 0x0

    .line 534
    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 53
    :cond_10
    iget-object p1, p0, Lo/consumePendingUpdateOperations$onPostMessage$5;->onMessageChannelReady:Lo/consumePendingUpdateOperations$onPostMessage;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$onPostMessage;->onNavigationEvent:Lo/consumePendingUpdateOperations;

    .line 9021
    iget-object p1, p1, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 9071
    iget-object p1, p1, Lo/pullGlows;->getInterfaceDescriptor:Lo/setActive;

    .line 53
    invoke-virtual {p1, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
