.class final Lo/stopInterceptRequestLayout$10;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    iget-object p1, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->newSession:Lo/recycleFromEnd;

    const v0, 0x7f0b0500

    .line 1315
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1316
    :goto_0
    iget-object v2, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->newSession:Lo/recycleFromEnd;

    const v3, 0x7f0b0249

    .line 1316
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move-object v2, v1

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_e

    if-eqz p1, :cond_4

    .line 1319
    iget-object p1, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onMessageChannelReady:Landroid/view/View;

    .line 1319
    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1320
    iget-object p1, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 4039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1320
    invoke-virtual {p1}, Lo/pullGlows;->asInterface()V

    goto/16 :goto_6

    .line 1322
    :cond_4
    iget-object p1, p0, Lo/stopInterceptRequestLayout$10;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 5039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 5809
    iget-boolean v2, p1, Lo/pullGlows;->onNavigationEvent:Z

    const/4 v3, 0x1

    const-string/jumbo v4, "user_input"

    if-eqz v2, :cond_9

    .line 5810
    iget-object p1, p1, Lo/pullGlows;->extraCallback:Lo/consumePendingUpdateOperations;

    .line 6337
    iget-object v2, p1, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 7069
    iget-object v2, v2, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 7320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    .line 6337
    :goto_2
    check-cast v2, Lo/scrollTo;

    if-eqz v2, :cond_6

    .line 8035
    iget-object v2, v2, Lo/scrollTo;->onPostMessage:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_7

    .line 6337
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6338
    :cond_7
    iget-object v5, p1, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v5, :cond_8

    .line 9035
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 6338
    :cond_8
    invoke-static {v1, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6339
    iput-boolean v3, p1, Lo/consumePendingUpdateOperations;->onTransact:Z

    .line 6340
    iget-object v1, p1, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v1, :cond_e

    iget-object v2, p1, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 9048
    iget-boolean v2, v2, Lo/pullGlows;->ICustomTabsCallback:Z

    .line 6340
    invoke-virtual {p1, v1, v2, v0}, Lo/consumePendingUpdateOperations;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    goto :goto_6

    .line 5812
    :cond_9
    iget-object v2, p1, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 9320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v5, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v1

    .line 5812
    :goto_4
    check-cast v2, Lo/scrollTo;

    if-eqz v2, :cond_b

    .line 10035
    iget-object v2, v2, Lo/scrollTo;->onPostMessage:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v2, v1

    :goto_5
    if-nez v2, :cond_c

    .line 5812
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 5813
    :cond_c
    iget-object v5, p1, Lo/pullGlows;->cancelAll:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v5, :cond_d

    .line 11035
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->ICustomTabsCallback:Ljava/lang/String;

    .line 5813
    :cond_d
    invoke-static {v1, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5814
    iput-boolean v3, p1, Lo/pullGlows;->INotificationSideChannel:Z

    .line 5815
    iget-object v1, p1, Lo/pullGlows;->cancelAll:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    if-eqz v1, :cond_e

    iget-boolean v2, p1, Lo/pullGlows;->ICustomTabsCallback:Z

    invoke-virtual {p1, v1, v2, v0}, Lo/pullGlows;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    .line 36
    :cond_e
    :goto_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
