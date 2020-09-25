.class final Lo/AsyncDifferConfig$Builder$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncDifferConfig$Builder;
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
        "Lo/getCurrentList$ICustomTabsCallback;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel$StateUiModel;",
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
.field private synthetic ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 50
    check-cast p1, Lo/getCurrentList$ICustomTabsCallback;

    .line 1284
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Lo/AsyncDifferConfig$Builder;)V

    .line 2015
    iget-object p1, p1, Lo/getCurrentList$ICustomTabsCallback;->onMessageChannelReady:Lo/latchList;

    .line 1286
    sget-object v0, Lo/latchList$extraCallback;->ICustomTabsCallback:Lo/latchList$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pairs"

    const-string/jumbo v2, "view_type"

    const-string v3, "link_card_carousel_view_scrolled"

    const/4 v4, 0x1

    const-string v5, "interpolator"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    .line 1287
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    .line 2023
    iget-object p1, p1, Lo/getCurrentList;->onNavigationEvent:Lo/getCurrentList$ICustomTabsCallback;

    const-string/jumbo v0, "screenLastState"

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3015
    :cond_0
    iget-object p1, p1, Lo/getCurrentList$ICustomTabsCallback;->onMessageChannelReady:Lo/latchList;

    .line 1287
    sget-object v8, Lo/latchList$ICustomTabsCallback;->onNavigationEvent:Lo/latchList$ICustomTabsCallback;

    invoke-static {p1, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1288
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v8}, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady(Lo/AsyncDifferConfig$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v9}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    invoke-static {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;Landroid/view/animation/Animation;)V

    .line 1289
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v8, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v8}, Lo/AsyncDifferConfig$Builder;->asInterface(Lo/AsyncDifferConfig$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v9}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lo/setInflatedId;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v7

    :goto_1
    invoke-static {p1, v0}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1290
    :cond_3
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    .line 3023
    iget-object p1, p1, Lo/getCurrentList;->onNavigationEvent:Lo/getCurrentList$ICustomTabsCallback;

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4015
    :cond_4
    iget-object p1, p1, Lo/getCurrentList$ICustomTabsCallback;->onMessageChannelReady:Lo/latchList;

    .line 1290
    sget-object v0, Lo/latchList$extraCallback;->ICustomTabsCallback:Lo/latchList$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1292
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->asInterface(Lo/AsyncDifferConfig$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    :cond_5
    :goto_2
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback$Stub(Lo/AsyncDifferConfig$Builder;)Lo/saveOldPosition;

    move-result-object p1

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    .line 4026
    iget-object v0, v0, Lo/getCurrentList;->onTransact:Lo/setActive;

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v5, :cond_6

    move-object v7, v0

    :cond_6
    if-eqz v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 1294
    :goto_3
    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    .line 1295
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->onRelationshipValidationResult(Lo/AsyncDifferConfig$Builder;)Lo/saveOldPosition;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v4, [Lo/addWrite;

    .line 5043
    new-instance v0, Lo/addWrite;

    const-string v5, "link"

    invoke-direct {v0, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v6

    .line 1296
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1296
    invoke-static {v3, v0}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1300
    :cond_8
    sget-object v0, Lo/latchList$ICustomTabsCallback;->onNavigationEvent:Lo/latchList$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1302
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v8, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v8}, Lo/AsyncDifferConfig$Builder;->asInterface(Lo/AsyncDifferConfig$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v9}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lo/setInflatedId;->extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v7

    :goto_4
    invoke-static {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;Landroid/view/animation/Animation;)V

    .line 1303
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v8, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v8}, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady(Lo/AsyncDifferConfig$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v9}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_5

    :cond_a
    move-object v0, v7

    :goto_5
    invoke-static {p1, v0}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback(Lo/AsyncDifferConfig$Builder;Landroid/view/animation/Animation;)V

    .line 1305
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback$Stub(Lo/AsyncDifferConfig$Builder;)Lo/saveOldPosition;

    move-result-object p1

    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    .line 6027
    iget-object v0, v0, Lo/getCurrentList;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 6320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v5, :cond_b

    move-object v7, v0

    :cond_b
    if-eqz v7, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    .line 1305
    :goto_6
    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    .line 1306
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$asInterface;->ICustomTabsCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->onRelationshipValidationResult(Lo/AsyncDifferConfig$Builder;)Lo/saveOldPosition;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v4, [Lo/addWrite;

    .line 7043
    new-instance v0, Lo/addWrite;

    const-string v5, "reason"

    invoke-direct {v0, v2, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v6

    .line 1307
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1307
    invoke-static {v3, v0}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    return-void
.end method
