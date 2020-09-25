.class public final Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;-><init>()V
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
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/tabholder/TabFragment$navigationViewAdapter$1",
        "Lcom/dreamplug/widget/navigation/CredNavigationView$Adapter;",
        "isTabAnimationEnabled",
        "",
        "()Z",
        "getFragment",
        "Landroidx/fragment/app/Fragment;",
        "tabItem",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "getList",
        "",
        "onItemSelected",
        "",
        "onTabClick",
        "source",
        "",
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
.field private synthetic onPostMessage:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/isFullSpan;)V
    .locals 8

    const-string/jumbo v0, "tabItem"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 185
    iget-object v2, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v2}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 23019
    iget-object v2, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 23043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "section"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    .line 186
    iget-object v4, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v4}, Lo/getViewLayoutPosition;->asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "NA"

    .line 24043
    :cond_1
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "trigger_section"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v1, v4

    .line 25010
    iget-object v5, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 25043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "target_section"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v6, v1, v5

    const-string v6, "pairs"

    .line 184
    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25105
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "navigation_submenu_change"

    .line 183
    invoke-static {v0, v6}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 190
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v0

    .line 26010
    iget-object v1, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_3

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 26054
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_7

    .line 192
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 27019
    iget-object v3, v0, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 193
    :cond_4
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_6

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 27056
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v1}, Lo/getViewLayoutPosition;->asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent(Lo/StaggeredGridLayoutManager$SavedState;Ljava/lang/String;II)V

    goto :goto_3

    .line 197
    :cond_7
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    .line 28010
    iget-object v1, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 197
    invoke-static {v0, v1}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;Ljava/lang/String;)V

    .line 28015
    :cond_8
    :goto_3
    iget-object v0, p1, Lo/isFullSpan;->asInterface:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 199
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-ne v2, v4, :cond_b

    .line 200
    sget-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    .line 29015
    iget-object p1, p1, Lo/isFullSpan;->asInterface:Ljava/lang/String;

    if-nez p1, :cond_a

    .line 200
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {v0, p1}, Lo/getPaddingStart;->onPostMessage(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final ICustomTabsCallback(Lo/isFullSpan;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "tabItem"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    .line 207
    iget-object v3, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v3}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 29019
    iget-object v3, v3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 29043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "section"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 30010
    iget-object p1, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 30043
    new-instance v4, Lo/addWrite;

    const-string v5, "action"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x2

    .line 31043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v0, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, p1

    const/4 p1, 0x3

    .line 210
    iget-object p2, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {p2}, Lo/getViewLayoutPosition;->asInterface(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "NA"

    .line 32043
    :cond_1
    new-instance v0, Lo/addWrite;

    const-string/jumbo v3, "trigger_section"

    invoke-direct {v0, v3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, p1

    const-string p1, "pairs"

    .line 206
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "navigation_top_bar_click"

    .line 205
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onMessageChannelReady(Lo/isFullSpan;)Landroidx/fragment/app/Fragment;
    .locals 8

    const-string/jumbo v0, "tabItem"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 113
    sget-object v1, Lo/setTrackResource$onPostMessage;->ICustomTabsCallback:Lo/setTrackResource$onPostMessage;

    .line 1117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 113
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lo/dispatchAttachedToWindow;

    invoke-direct {p1}, Lo/dispatchAttachedToWindow;-><init>()V

    goto/16 :goto_1

    .line 114
    :cond_0
    sget-object v1, Lo/setTrackResource$onPostMessage;->onPostMessage:Lo/setTrackResource$onPostMessage;

    .line 2117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 114
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "menu_selection"

    const-string v3, "extra"

    if-eqz v1, :cond_1

    sget-object p1, Lo/startIntentSenderFromFragment;->ICustomTabsCallback:Lo/startIntentSenderFromFragment$onMessageChannelReady;

    new-instance p1, Lo/onDetach$getDefaultImpl;

    invoke-direct {p1, v2}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2347
    new-instance v0, Lo/startIntentSenderFromFragment;

    invoke-direct {v0}, Lo/startIntentSenderFromFragment;-><init>()V

    .line 2348
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 3016
    invoke-static {v1, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_1

    .line 115
    :cond_1
    sget-object v1, Lo/setTrackResource$onPostMessage;->onMessageChannelReady:Lo/setTrackResource$onPostMessage;

    .line 3117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 115
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lo/allocateRequestIndex;->onMessageChannelReady:Lo/allocateRequestIndex$extraCallback;

    new-instance p1, Lo/onDetach$getDefaultImpl;

    invoke-direct {p1, v2}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3314
    new-instance v0, Lo/allocateRequestIndex;

    invoke-direct {v0}, Lo/allocateRequestIndex;-><init>()V

    .line 3315
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 4016
    invoke-static {v1, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    sget-object v1, Lo/setTrackResource$onPostMessage;->onNavigationEvent:Lo/setTrackResource$onPostMessage;

    .line 4117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 116
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lo/setAnimator;->onPostMessage:Lo/setAnimator$ICustomTabsCallback;

    new-instance p1, Lo/onDetach$getDefaultImpl;

    invoke-direct {p1, v2}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4212
    new-instance v0, Lo/setAnimator;

    invoke-direct {v0}, Lo/setAnimator;-><init>()V

    .line 4213
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 5016
    invoke-static {v1, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    sget-object v1, Lo/setTrackResource$onPostMessage;->extraCallback:Lo/setTrackResource$onPostMessage;

    .line 5117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 120
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onPostMessage;

    new-instance p1, Lo/onDetach$getDefaultImpl;

    invoke-direct {p1, v2}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5247
    new-instance v0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-direct {v0}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;-><init>()V

    .line 5248
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 6016
    invoke-static {v1, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    sget-object v1, Lo/setTrackResource$onPostMessage;->asInterface:Lo/setTrackResource$onPostMessage;

    .line 6117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 121
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lo/isItemChanged;->onTransact:Lo/isItemChanged$onNavigationEvent;

    const/4 p1, 0x0

    const-string v0, ""

    invoke-static {v0, p1}, Lo/isItemChanged$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Z)Lo/isItemChanged;

    move-result-object p1

    goto :goto_1

    .line 122
    :cond_5
    sget-object v1, Lo/setTrackResource$onPostMessage;->ICustomTabsCallback$Stub:Lo/setTrackResource$onPostMessage;

    .line 7117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 122
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    sget-object p1, Lo/onFocusSearchFailed;->ICustomTabsCallback:Lo/onFocusSearchFailed$ICustomTabsCallback;

    new-instance p1, Lo/onDetach$setDefaultImpl;

    invoke-direct {p1, v2}, Lo/onDetach$setDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7275
    new-instance v0, Lo/onFocusSearchFailed;

    invoke-direct {v0}, Lo/onFocusSearchFailed;-><init>()V

    .line 7276
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 8016
    invoke-static {v1, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    sget-object v1, Lo/setTrackResource$onPostMessage;->onRelationshipValidationResult:Lo/setTrackResource$onPostMessage;

    .line 8117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 124
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    sget-object p1, Lo/isAnimating;->onMessageChannelReady:Lo/isAnimating$ICustomTabsCallback;

    new-instance p1, Lo/isAnimating$extraCallback;

    const/4 v0, 0x0

    const-string v1, "landing"

    invoke-direct {p1, v1, v0}, Lo/isAnimating$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lo/isAnimating$ICustomTabsCallback;->extraCallback(Lo/isAnimating$extraCallback;)Lo/isAnimating;

    move-result-object p1

    goto :goto_1

    .line 126
    :cond_7
    sget-object v1, Lo/setTrackResource$onPostMessage;->onTransact:Lo/setTrackResource$onPostMessage;

    .line 9117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 126
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lo/addOnItemTouchListener;

    invoke-direct {p1}, Lo/addOnItemTouchListener;-><init>()V

    goto :goto_1

    .line 10011
    :cond_8
    iget-object v0, p1, Lo/isFullSpan;->onMessageChannelReady:Ljava/lang/String;

    .line 128
    sget-object v1, Lo/setTrackResource$onPostMessage;->asBinder:Lo/setTrackResource$onPostMessage;

    .line 10117
    iget-object v1, v1, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 128
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    sget-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    .line 130
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    .line 11012
    iget-object v2, p1, Lo/isFullSpan;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 132
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/16 v7, 0x16

    move-object v1, v0

    .line 130
    invoke-direct/range {v1 .. v7}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    .line 129
    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object p1

    .line 128
    :goto_1
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 136
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown tab submenu received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12010
    iget-object p1, p1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/isFullSpan;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 142
    sget-object v1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    iget-object v1, v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v1}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 12019
    iget-object v1, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 142
    :goto_0
    invoke-static {v1}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object v1

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v4, v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    if-eqz v1, :cond_1

    .line 12025
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 144
    :goto_1
    invoke-static {v4, v5}, Lo/getViewLayoutPosition;->onPostMessage(Lo/getViewLayoutPosition;Ljava/lang/String;)V

    .line 146
    iget-object v4, v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v4}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 13019
    iget-object v4, v4, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_3

    goto :goto_5

    .line 146
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0x30f4df

    if-eq v5, v6, :cond_4

    goto :goto_5

    :cond_4
    const-string v5, "home"

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    new-instance v2, Lo/isFullSpan;

    if-eqz v1, :cond_6

    .line 14017
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->extraCallback:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v1

    goto :goto_4

    :cond_6
    :goto_3
    move-object v7, v5

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xdc

    const-string v8, "home"

    move-object v6, v2

    .line 148
    invoke-direct/range {v6 .. v14}, Lo/isFullSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    .line 147
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_7
    :goto_5
    if-eqz v1, :cond_14

    .line 14027
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    if-eqz v4, :cond_14

    .line 153
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-ne v4, v5, :cond_14

    .line 15027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    .line 154
    check-cast v1, Ljava/lang/Iterable;

    .line 490
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_13

    check-cast v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    .line 155
    iget-object v9, v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v9}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    if-ne v9, v5, :cond_9

    .line 156
    iget-object v6, v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v6}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;)Ljava/lang/String;

    move-result-object v6

    .line 16041
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->extraCallback:Ljava/lang/String;

    .line 156
    invoke-static {v6, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    move v15, v6

    goto :goto_8

    :cond_9
    if-nez v6, :cond_a

    const/4 v15, 0x1

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    .line 161
    :goto_8
    invoke-static {}, Lo/setTrackResource$onPostMessage;->values()[Lo/setTrackResource$onPostMessage;

    move-result-object v6

    .line 491
    array-length v9, v6

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v9, :cond_c

    aget-object v11, v6, v10

    .line 16117
    iget-object v11, v11, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 17043
    iget-object v12, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 161
    invoke-static {v11, v12}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v6, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_12

    .line 18043
    iget-object v6, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 162
    sget-object v9, Lo/setTrackResource$onPostMessage;->asBinder:Lo/setTrackResource$onPostMessage;

    .line 18117
    iget-object v9, v9, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 162
    invoke-static {v6, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-nez v6, :cond_e

    .line 19045
    iget-object v6, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    if-eqz v6, :cond_12

    .line 19063
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;->onPostMessage:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 162
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    if-ne v6, v5, :cond_12

    .line 164
    :cond_e
    new-instance v6, Lo/isFullSpan;

    .line 20039
    iget-object v10, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onPostMessage:Ljava/lang/String;

    .line 20041
    iget-object v11, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->extraCallback:Ljava/lang/String;

    .line 20043
    iget-object v12, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 20045
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    if-eqz v9, :cond_f

    .line 20063
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;->onPostMessage:Ljava/lang/String;

    move-object v13, v9

    goto :goto_c

    :cond_f
    move-object v13, v2

    .line 21045
    :goto_c
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    if-eqz v9, :cond_10

    .line 21067
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;->onNavigationEvent:Ljava/lang/String;

    move-object v14, v9

    goto :goto_d

    :cond_10
    move-object v14, v2

    .line 22045
    :goto_d
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    if-eqz v7, :cond_11

    .line 22065
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;->onMessageChannelReady:Ljava/lang/Boolean;

    move-object/from16 v16, v7

    goto :goto_e

    :cond_11
    move-object/from16 v16, v2

    :goto_e
    const/16 v17, 0x40

    move-object v9, v6

    .line 164
    invoke-direct/range {v9 .. v17}, Lo/isFullSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    .line 163
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_12
    move v6, v8

    goto/16 :goto_6

    .line 15441
    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Index overflow has happened."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 179
    :cond_14
    :goto_f
    check-cast v3, Ljava/util/List;

    return-object v3
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->onTransact(Lo/getViewLayoutPosition;)Z

    move-result v0

    return v0
.end method
