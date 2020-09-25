.class public final Lo/removeAndRecycleViewAt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAndRecycleViewAt$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/v1/adapters/NBAHomeAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "animationListener",
        "Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;)V",
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
.field public static final extraCallback:Lo/removeAndRecycleViewAt$onMessageChannelReady;

.field private static final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/removeAndRecycleViewAt$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/removeAndRecycleViewAt$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/removeAndRecycleViewAt;->extraCallback:Lo/removeAndRecycleViewAt$onMessageChannelReady;

    const-string v0, "HOME1"

    const-string v1, "HOME2"

    const-string v2, "HOME3"

    const-string v3, "HOME4"

    const-string v4, "HOME5"

    .line 65
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 60
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 1076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 1129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sput-object v0, Lo/removeAndRecycleViewAt;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V
    .locals 1

    const-string v0, "animationListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/removeAndRecycleViewAt;->onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    return-void
.end method

.method public static final synthetic onNavigationEvent()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lo/removeAndRecycleViewAt;->onNavigationEvent:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :pswitch_0
    new-instance p2, Lo/getChildCount;

    iget-object v0, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getChildCount;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 31
    :pswitch_1
    new-instance p2, Lo/getChildAt;

    iget-object v0, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/removeAndRecycleViewAt;->onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/getChildAt;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 30
    :pswitch_2
    new-instance p2, Lo/getHeightMode;

    iget-object v0, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/removeAndRecycleViewAt;->onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/getHeightMode;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 29
    :pswitch_3
    new-instance p2, Lo/getWidthMode;

    iget-object v0, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/removeAndRecycleViewAt;->onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/getWidthMode;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 28
    :pswitch_4
    new-instance p2, Lo/getPaddingLeft;

    iget-object v0, p0, Lo/removeAndRecycleViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/removeAndRecycleViewAt;->onMessageChannelReady:Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    invoke-direct {p2, p1, v0, v1}, Lo/getPaddingLeft;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lo/detachAndScrapViewAt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object p1, p1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1023
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "HOME5"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbbd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string v0, "HOME4"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbbc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string v0, "HOME3"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbbb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-string v0, "HOME2"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbba

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string v0, "HOME1"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbb9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x41baf32
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
