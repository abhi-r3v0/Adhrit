.class public final Lo/startSmoothScroll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startSmoothScroll$extraCallback;,
        Lo/startSmoothScroll$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/NBAPaymentsAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "animationListener",
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/NBAPaymentsAdapter$OnAnimationListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/NBAPaymentsAdapter$OnAnimationListener;)V",
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
        "OnAnimationListener",
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
.field private static final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/startSmoothScroll$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/startSmoothScroll$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/startSmoothScroll$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/startSmoothScroll;->onNavigationEvent:Lo/startSmoothScroll$onMessageChannelReady;

    const-string v0, "PS2"

    const-string v1, "PS3"

    const-string v2, "PS5"

    const-string v3, "PS6"

    .line 56
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 52
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 6076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 6129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lo/startSmoothScroll;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lo/startSmoothScroll;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 20
    :pswitch_1
    new-instance p2, Lo/removeAllViews;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/removeAllViews;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_2
    new-instance p2, Lo/detachView;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/detachView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_3
    new-instance p2, Lo/detachViewAt;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/detachViewAt;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_4
    new-instance p2, Lo/attachView;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/attachView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 16
    :pswitch_5
    new-instance p2, Lo/addView;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/addView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 15
    :pswitch_6
    new-instance p2, Lo/removeView;

    iget-object v0, p0, Lo/startSmoothScroll;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/startSmoothScroll;->ICustomTabsCallback:Lo/startSmoothScroll$extraCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/removeView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/startSmoothScroll$extraCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lo/detachAndScrapViewAt;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "PS1"

    .line 27
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x2712

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 28
    move-object v1, p1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 2007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "PS2"

    .line 28
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x2714

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 29
    move-object v1, p1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 3007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 3023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "PS3"

    .line 29
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x2715

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 30
    move-object v1, p1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 4007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 4023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "PS4"

    .line 30
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x2716

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 31
    move-object v1, p1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 5007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 5023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "PS5"

    .line 31
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x2717

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    .line 32
    check-cast p1, Lo/detachAndScrapViewAt;

    .line 6007
    iget-object p1, p1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 6023
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "PS6"

    .line 32
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x2718

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
