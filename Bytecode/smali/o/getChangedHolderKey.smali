.class public final Lo/getChangedHolderKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getChangedHolderKey$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B_\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012(\u0010\u0006\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\n0\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0010\u000fJ\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R3\u0010\u0006\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\n0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinCardAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "exoPlayerPool",
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;",
        "presence",
        "Landroidx/lifecycle/LiveData;",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "focusedIndex",
        "Landroidx/lifecycle/MutableLiveData;",
        "lifecycleEvent",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getExoPlayerPool",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;",
        "getPresence",
        "()Landroidx/lifecycle/LiveData;",
        "getItemViewType",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "(Lcom/dreamplug/utils/list/ListItem;)Ljava/lang/Integer;",
        "onCreateViewHolder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "Companion",
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
.field private final ICustomTabsCallback:Lo/onEnterLayoutOrScroll;

.field private final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;Lo/setActive;Lo/setActive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasGapsToFix$onMessageChannelReady;",
            "Lo/onEnterLayoutOrScroll;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;",
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exoPlayerPool"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presence"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusedIndex"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleEvent"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getChangedHolderKey;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/getChangedHolderKey;->ICustomTabsCallback:Lo/onEnterLayoutOrScroll;

    iput-object p3, p0, Lo/getChangedHolderKey;->onPostMessage:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lo/getChangedHolderKey;->onNavigationEvent:Lo/setActive;

    iput-object p5, p0, Lo/getChangedHolderKey;->extraCallback:Lo/setActive;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :pswitch_0
    new-instance p2, Lo/recordAnimationInfoIfBouncedHiddenView;

    iget-object v0, p0, Lo/getChangedHolderKey;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/recordAnimationInfoIfBouncedHiddenView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_1
    new-instance p2, Lo/animateDisappearance;

    iget-object v2, p0, Lo/getChangedHolderKey;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v3, p0, Lo/getChangedHolderKey;->ICustomTabsCallback:Lo/onEnterLayoutOrScroll;

    iget-object v4, p0, Lo/getChangedHolderKey;->onPostMessage:Landroidx/lifecycle/LiveData;

    iget-object v5, p0, Lo/getChangedHolderKey;->onNavigationEvent:Lo/setActive;

    iget-object v6, p0, Lo/getChangedHolderKey;->extraCallback:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lo/animateDisappearance;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;Lo/setActive;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_2
    new-instance p2, Lo/animateAppearance;

    iget-object v2, p0, Lo/getChangedHolderKey;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v3, p0, Lo/getChangedHolderKey;->ICustomTabsCallback:Lo/onEnterLayoutOrScroll;

    iget-object v4, p0, Lo/getChangedHolderKey;->onPostMessage:Landroidx/lifecycle/LiveData;

    iget-object v5, p0, Lo/getChangedHolderKey;->onNavigationEvent:Lo/setActive;

    iget-object v6, p0, Lo/getChangedHolderKey;->extraCallback:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lo/animateAppearance;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;Lo/setActive;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x6d61
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Lo/clearOldPositions;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/clearOldPositions;

    .line 1008
    iget-object v1, v1, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 1029
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 1062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "image_card"

    .line 26
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 28
    move-object v0, p1

    check-cast v0, Lo/clearOldPositions;

    .line 2008
    iget-object v0, v0, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 2029
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 2062
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v1, "grid"

    .line 28
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x6d62

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    instance-of p1, p1, Lo/offsetPositionRecordsForMove;

    if-eqz p1, :cond_2

    const/16 p1, 0x6d63

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x6d61

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
