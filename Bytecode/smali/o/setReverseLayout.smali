.class public final Lo/setReverseLayout;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/FabrikPendingReferredPeopleDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "referredManager",
        "Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPendingPeopleManager;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPendingPeopleManager;)V",
        "cityLoader",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "kotlin.jvm.PlatformType",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "referredListingAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/FabrikPendingReferredListingAdapter;",
        "getReferredManager",
        "()Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPendingPeopleManager;",
        "remind",
        "Landroid/widget/TextView;",
        "sheetView",
        "Landroid/view/View;",
        "title",
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
.field private final ICustomTabsCallback:Lo/onDestroyView;

.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView;

.field final onMessageChannelReady:Lo/ViewStubCompat;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/view/View;

.field private final onRelationshipValidationResult:Landroid/widget/TextView;

.field private final warmup:Lo/getReverseLayout;


# direct methods
.method public synthetic constructor <init>(Lo/onSessionEvent;)V
    .locals 1

    .line 25
    new-instance v0, Lo/ViewStubCompat;

    invoke-direct {v0}, Lo/ViewStubCompat;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/setReverseLayout;-><init>(Lo/onSessionEvent;Lo/ViewStubCompat;)V

    return-void
.end method

.method private constructor <init>(Lo/onSessionEvent;Lo/ViewStubCompat;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referredManager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f140105

    invoke-direct {p0, v0, v1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lo/setReverseLayout;->onMessageChannelReady:Lo/ViewStubCompat;

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0087

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "LayoutInflater.from(cont\u2026rred_people_dialog, null)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    .line 28
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/setReverseLayout;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    iget-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cityLoader:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onDestroyView;

    iput-object p2, p0, Lo/setReverseLayout;->ICustomTabsCallback:Lo/onDestroyView;

    .line 30
    iget-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/setReverseLayout;->onNavigationEvent:Landroid/widget/TextView;

    .line 31
    iget-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/setReverseLayout;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 33
    new-instance p2, Lo/getReverseLayout;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lo/getReverseLayout;-><init>(B)V

    iput-object p2, p0, Lo/setReverseLayout;->warmup:Lo/getReverseLayout;

    .line 36
    iget-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lo/setReverseLayout;->onPostMessage:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060209

    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object p2, p0, Lo/setReverseLayout;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/setReverseLayout;->warmup:Lo/getReverseLayout;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p2, p0, Lo/setReverseLayout;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p2, p0, Lo/setReverseLayout;->onRelationshipValidationResult:Landroid/widget/TextView;

    const-string/jumbo v2, "title"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p2, p0, Lo/setReverseLayout;->onNavigationEvent:Landroid/widget/TextView;

    const-string v2, "remind"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p2, p0, Lo/setReverseLayout;->ICustomTabsCallback:Lo/onDestroyView;

    const-string v1, "cityLoader"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p2, p0, Lo/setReverseLayout;->onMessageChannelReady:Lo/ViewStubCompat;

    .line 1020
    iget-object p2, p2, Lo/ViewStubCompat;->onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;

    .line 43
    check-cast p1, Lo/toLegacyStreamType;

    new-instance v0, Lo/setReverseLayout$5;

    invoke-direct {v0, p0}, Lo/setReverseLayout$5;-><init>(Lo/setReverseLayout;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 61
    iget-object p2, p0, Lo/setReverseLayout;->onMessageChannelReady:Lo/ViewStubCompat;

    .line 1023
    iget-object p2, p2, Lo/ViewStubCompat;->ICustomTabsCallback:Lo/setActive;

    .line 61
    new-instance v0, Lo/setReverseLayout$1;

    invoke-direct {v0, p0}, Lo/setReverseLayout$1;-><init>(Lo/setReverseLayout;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 67
    iget-object p1, p0, Lo/setReverseLayout;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setReverseLayout$4;

    invoke-direct {p2, p0}, Lo/setReverseLayout$4;-><init>(Lo/setReverseLayout;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 78
    iget-object p1, p0, Lo/setReverseLayout;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lo/setReverseLayout$3;

    invoke-direct {p2, p0}, Lo/setReverseLayout$3;-><init>(Lo/setReverseLayout;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 90
    iget-object p1, p0, Lo/setReverseLayout;->onMessageChannelReady:Lo/ViewStubCompat;

    const/16 p2, 0xa

    .line 1029
    invoke-virtual {p1, p2}, Lo/ViewStubCompat;->onNavigationEvent(I)V

    .line 91
    sget-object p1, Lo/setReverseLayout$2;->onNavigationEvent:Lo/setReverseLayout$2;

    check-cast p1, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, p1}, Lo/setReverseLayout;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-string p1, "referrals_list_screen_load"

    .line 100
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void

    .line 37
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setReverseLayout;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setReverseLayout;->onRelationshipValidationResult:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/setReverseLayout;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setReverseLayout;->onNavigationEvent:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/setReverseLayout;)Lo/getReverseLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setReverseLayout;->warmup:Lo/getReverseLayout;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/setReverseLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setReverseLayout;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/setReverseLayout;)Lo/onDestroyView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setReverseLayout;->ICustomTabsCallback:Lo/onDestroyView;

    return-object p0
.end method
