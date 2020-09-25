.class public final Lo/dispatchContentChangedIfNecessary;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB1\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0016H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "exoPlayerPool",
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;",
        "updateOptinUi",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/OptinState;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;Landroidx/lifecycle/LiveData;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getExoPlayerPool",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/util/WinCardExoPlayerPool;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "getUpdateOptinUi",
        "()Landroidx/lifecycle/LiveData;",
        "setUpdateOptinUi",
        "(Landroidx/lifecycle/LiveData;)V",
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


# static fields
.field public static final ICustomTabsCallback:Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;

.field private static final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/onEnterLayoutOrScroll;

.field private onNavigationEvent:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lo/throwIfInMutationOperation<",
            "Lo/isComputingLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/dispatchContentChangedIfNecessary;->ICustomTabsCallback:Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;

    const-string v2, "horizontal_carousal"

    const-string v3, "image_card"

    const-string v4, "image_card_with_place_holder"

    const-string v5, "pending_referral"

    const-string/jumbo v6, "textual_detail_card"

    const-string v7, "raffle_ticket_card"

    const-string v8, "notification_consent"

    .line 64
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 7076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 7129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sput-object v0, Lo/dispatchContentChangedIfNecessary;->onRelationshipValidationResult:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lo/dispatchContentChangedIfNecessary;-><init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasGapsToFix$onMessageChannelReady;",
            "Lo/onEnterLayoutOrScroll;",
            "Landroidx/lifecycle/LiveData<",
            "Lo/throwIfInMutationOperation<",
            "Lo/isComputingLayout;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exoPlayerPool"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/dispatchContentChangedIfNecessary;->onMessageChannelReady:Lo/onEnterLayoutOrScroll;

    iput-object p3, p0, Lo/dispatchContentChangedIfNecessary;->onNavigationEvent:Landroidx/lifecycle/LiveData;

    .line 16
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/dispatchContentChangedIfNecessary;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method

.method public static final synthetic onPostMessage()Ljava/util/List;
    .locals 1

    .line 14
    sget-object v0, Lo/dispatchContentChangedIfNecessary;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    new-instance p2, Lo/getDeepestFocusedViewWithId;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getDeepestFocusedViewWithId;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 26
    :pswitch_1
    new-instance p2, Lo/fillRemainingScrollValues;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/fillRemainingScrollValues;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 25
    :pswitch_2
    new-instance p2, Lo/dispatchLayoutStep3;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/dispatchLayoutStep3;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 24
    :pswitch_3
    new-instance p2, Lo/getItemAnimator;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/dispatchContentChangedIfNecessary;->onNavigationEvent:Landroidx/lifecycle/LiveData;

    invoke-direct {p2, p1, v0, v1}, Lo/getItemAnimator;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/lifecycle/LiveData;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 23
    :pswitch_4
    new-instance p2, Lo/recoverFocusFromState;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v2, p0, Lo/dispatchContentChangedIfNecessary;->onMessageChannelReady:Lo/onEnterLayoutOrScroll;

    invoke-direct {p2, p1, v0, v1, v2}, Lo/recoverFocusFromState;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 22
    :pswitch_5
    new-instance p2, Lo/findNextViewToFocus;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/findNextViewToFocus;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 21
    :pswitch_6
    new-instance p2, Lo/postAnimationRunner;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/dispatchContentChangedIfNecessary;->onMessageChannelReady:Lo/onEnterLayoutOrScroll;

    invoke-direct {p2, p1, v0, v1}, Lo/postAnimationRunner;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 20
    :pswitch_7
    new-instance p2, Lo/isAccessibilityEnabled;

    iget-object v0, p0, Lo/dispatchContentChangedIfNecessary;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/dispatchContentChangedIfNecessary;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v2, p0, Lo/dispatchContentChangedIfNecessary;->onMessageChannelReady:Lo/onEnterLayoutOrScroll;

    invoke-direct {p2, p1, v0, v1, v2}, Lo/isAccessibilityEnabled;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x7149
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 1010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 1027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 1062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "horizontal_carousal"

    .line 35
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x7149

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 37
    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 2010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 2027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 2062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "image_card"

    .line 37
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x714a

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 39
    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 3010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 3027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 3062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "image_card_with_place_holder"

    .line 39
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x714b

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 41
    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 4010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 4027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 4062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "pending_referral"

    .line 41
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x714c

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 43
    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 5010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 5027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 5062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v2, "notification_consent"

    .line 43
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x714d

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    .line 45
    move-object v1, p1

    check-cast v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 6010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 6027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 6062
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v2, "textual_detail_card"

    .line 45
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p1, 0x714e

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 47
    move-object v0, p1

    check-cast v0, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 7010
    iget-object v0, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 7027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 7062
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string v1, "raffle_ticket_card"

    .line 47
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x714f

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50
    :cond_6
    instance-of p1, p1, Lo/dispatchLayout;

    if-eqz p1, :cond_7

    const/16 p1, 0x7150

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
