.class public final Lo/resolveShouldLayoutReverse;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/FabrikReferredPeopleDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "referredManager",
        "Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPeopleManager;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPeopleManager;)V",
        "cityLoader",
        "Lcom/dreamplug/androidapp/utils/LoaderView;",
        "kotlin.jvm.PlatformType",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "referredListingAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/FabrikReferredListingAdapter;",
        "getReferredManager",
        "()Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPeopleManager;",
        "sheetView",
        "Landroid/view/View;",
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
.field private final ICustomTabsCallback:Lo/canScrollVertically;

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

.field private final onNavigationEvent:Lo/evictAll;

.field final onPostMessage:Lo/isCompatVectorFromResourcesEnabled;


# direct methods
.method public synthetic constructor <init>(Lo/onSessionEvent;)V
    .locals 1

    .line 21
    new-instance v0, Lo/isCompatVectorFromResourcesEnabled;

    invoke-direct {v0}, Lo/isCompatVectorFromResourcesEnabled;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/resolveShouldLayoutReverse;-><init>(Lo/onSessionEvent;Lo/isCompatVectorFromResourcesEnabled;)V

    return-void
.end method

.method private constructor <init>(Lo/onSessionEvent;Lo/isCompatVectorFromResourcesEnabled;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referredManager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f140105

    invoke-direct {p0, v0, v1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lo/resolveShouldLayoutReverse;->onPostMessage:Lo/isCompatVectorFromResourcesEnabled;

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0088

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "LayoutInflater.from(cont\u2026rred_people_dialog, null)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/resolveShouldLayoutReverse;->extraCallback:Landroid/view/View;

    .line 24
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/resolveShouldLayoutReverse;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->extraCallback:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cityLoader:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/evictAll;

    iput-object p2, p0, Lo/resolveShouldLayoutReverse;->onNavigationEvent:Lo/evictAll;

    .line 26
    new-instance p2, Lo/canScrollVertically;

    invoke-direct {p2}, Lo/canScrollVertically;-><init>()V

    iput-object p2, p0, Lo/resolveShouldLayoutReverse;->ICustomTabsCallback:Lo/canScrollVertically;

    .line 29
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->extraCallback:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 30
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->extraCallback:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060209

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/resolveShouldLayoutReverse;->ICustomTabsCallback:Lo/canScrollVertically;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->onNavigationEvent:Lo/evictAll;

    const-string v0, "cityLoader"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->onPostMessage:Lo/isCompatVectorFromResourcesEnabled;

    .line 1020
    iget-object p2, p2, Lo/isCompatVectorFromResourcesEnabled;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 34
    check-cast p1, Lo/toLegacyStreamType;

    new-instance v0, Lo/resolveShouldLayoutReverse$3;

    invoke-direct {v0, p0}, Lo/resolveShouldLayoutReverse$3;-><init>(Lo/resolveShouldLayoutReverse;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 50
    iget-object p2, p0, Lo/resolveShouldLayoutReverse;->onPostMessage:Lo/isCompatVectorFromResourcesEnabled;

    .line 1021
    iget-object p2, p2, Lo/isCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    .line 50
    new-instance v0, Lo/resolveShouldLayoutReverse$5;

    invoke-direct {v0, p0}, Lo/resolveShouldLayoutReverse$5;-><init>(Lo/resolveShouldLayoutReverse;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 56
    iget-object p1, p0, Lo/resolveShouldLayoutReverse;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lo/resolveShouldLayoutReverse$2;

    invoke-direct {p2, p0}, Lo/resolveShouldLayoutReverse$2;-><init>(Lo/resolveShouldLayoutReverse;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 68
    iget-object p1, p0, Lo/resolveShouldLayoutReverse;->onPostMessage:Lo/isCompatVectorFromResourcesEnabled;

    const/16 p2, 0xa

    .line 1027
    invoke-virtual {p1, p2}, Lo/isCompatVectorFromResourcesEnabled;->extraCallback(I)V

    const-string p1, "referrals_list_screen_load"

    .line 69
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void

    .line 30
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic extraCallback(Lo/resolveShouldLayoutReverse;)Lo/evictAll;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/resolveShouldLayoutReverse;->onNavigationEvent:Lo/evictAll;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/resolveShouldLayoutReverse;)Lo/canScrollVertically;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/resolveShouldLayoutReverse;->ICustomTabsCallback:Lo/canScrollVertically;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/resolveShouldLayoutReverse;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/resolveShouldLayoutReverse;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method
