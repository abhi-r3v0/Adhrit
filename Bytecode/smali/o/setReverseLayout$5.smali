.class final Lo/setReverseLayout$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setReverseLayout;-><init>(Lo/onSessionEvent;Lo/ViewStubCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setReverseLayout;


# direct methods
.method constructor <init>(Lo/setReverseLayout;)V
    .locals 0

    iput-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 25
    check-cast p1, Ljava/util/List;

    .line 1044
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    check-cast p1, Ljava/lang/Iterable;

    .line 1105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;

    .line 1047
    new-instance v5, Lo/getReverseLayout$extraCallback;

    .line 1048
    invoke-virtual {v3}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;->getRefereeName()Ljava/lang/String;

    move-result-object v6

    .line 1049
    sget-object v7, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    invoke-virtual {v3}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;->getRefereeName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v7

    .line 1050
    invoke-virtual {v3}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPendingPersonData;->getMemberSince()Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-direct {v5, v6, v7, v2, v3}, Lo/getReverseLayout$extraCallback;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_2

    .line 1441
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1053
    :cond_3
    iget-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-static {p1}, Lo/setReverseLayout;->onNavigationEvent(Lo/setReverseLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v2, "recyclerView"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-static {p1}, Lo/setReverseLayout;->ICustomTabsCallback(Lo/setReverseLayout;)Landroid/widget/TextView;

    move-result-object p1

    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-static {p1}, Lo/setReverseLayout;->extraCallback(Lo/setReverseLayout;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "remind"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-static {p1}, Lo/setReverseLayout;->onPostMessage(Lo/setReverseLayout;)Lo/onDestroyView;

    move-result-object p1

    const-string v1, "cityLoader"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lo/setReverseLayout$5;->extraCallback:Lo/setReverseLayout;

    invoke-static {p1}, Lo/setReverseLayout;->onMessageChannelReady(Lo/setReverseLayout;)Lo/getReverseLayout;

    move-result-object p1

    check-cast v0, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_4
    return-void
.end method
