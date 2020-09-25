.class public abstract Lo/getReenterTransition;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J7\u0010\u0011\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00130\u00122\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0084@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/CMBaseFrag;",
        "Landroidx/fragment/app/Fragment;",
        "contentLayoutId",
        "",
        "(I)V",
        "getContentLayoutId",
        "()I",
        "firstLoad",
        "",
        "getFirstLoad",
        "()Z",
        "setFirstLoad",
        "(Z)V",
        "recyclerLayoutAnimation",
        "Landroid/view/animation/LayoutAnimationController;",
        "getRecyclerLayoutAnimation",
        "()Landroid/view/animation/LayoutAnimationController;",
        "getFilteredTemplates",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "",
        "response",
        "",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setScreenData",
        "command",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$ScreenData$SetScreenData;",
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
.field private extraCallback:Ljava/util/HashMap;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lo/getReenterTransition;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/getReenterTransition;->onPostMessage:Z

    return-void
.end method

.method public extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getReenterTransition;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getReenterTransition;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getReenterTransition;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getReenterTransition;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getReenterTransition;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public abstract extraCallback(Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;)V
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lo/getReenterTransition;->extraCallback()V

    return-void
.end method

.method protected final onPostMessage()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/getReenterTransition;->onPostMessage:Z

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    sget-object p1, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/getReenterTransition$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getReenterTransition$onNavigationEvent;-><init>(Lo/getReenterTransition;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
