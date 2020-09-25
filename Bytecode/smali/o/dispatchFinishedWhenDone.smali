.class public final Lo/dispatchFinishedWhenDone;
.super Lo/getContentPaddingTop;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchFinishedWhenDone$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B3\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestStoriesAdapter;",
        "Lcom/dreamplug/androidapp/ui/widget/ViewPagerAdapter;",
        "stories",
        "",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "listener",
        "Lcom/dreamplug/fabrik/ui/digest/DigestStoryListener;",
        "exoPlayerPool",
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/DigestExoPlayerPool;",
        "storyState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates;",
        "(Ljava/util/List;Lcom/dreamplug/fabrik/ui/digest/DigestStoryListener;Lcom/dreamplug/fabrik/ui/lifestyle/util/DigestExoPlayerPool;Landroidx/lifecycle/MutableLiveData;)V",
        "getExoPlayerPool",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/util/DigestExoPlayerPool;",
        "getListener",
        "()Lcom/dreamplug/fabrik/ui/digest/DigestStoryListener;",
        "getCount",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "pager",
        "Landroidx/viewpager/widget/ViewPager;",
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
.field private static final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/dispatchFinishedWhenDone$onPostMessage;


# instance fields
.field private final asInterface:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/diffPartial;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/endAnimations;

.field private final onTransact:Lo/findInterceptingOnItemTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lo/dispatchFinishedWhenDone$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dispatchFinishedWhenDone$onPostMessage;-><init>(B)V

    sput-object v0, Lo/dispatchFinishedWhenDone;->onNavigationEvent:Lo/dispatchFinishedWhenDone$onPostMessage;

    const-string v2, "digest1"

    const-string v3, "digest2"

    const-string v4, "digest3"

    const-string v5, "digest4"

    const-string v6, "digest5"

    const-string v7, "digest6"

    const-string v8, "digest7"

    const-string v9, "digest8"

    const-string v10, "digest10"

    .line 54
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 44
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

    .line 44
    sput-object v0, Lo/dispatchFinishedWhenDone;->ICustomTabsCallback$Stub:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lo/endAnimations;Lo/findInterceptingOnItemTouchListener;Lo/setActive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
            ">;",
            "Lo/endAnimations;",
            "Lo/findInterceptingOnItemTouchListener;",
            "Lo/setActive<",
            "Lo/diffPartial;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "stories"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storyState"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lo/getContentPaddingTop;-><init>()V

    iput-object p1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    iput-object p2, p0, Lo/dispatchFinishedWhenDone;->onPostMessage:Lo/endAnimations;

    iput-object p3, p0, Lo/dispatchFinishedWhenDone;->onTransact:Lo/findInterceptingOnItemTouchListener;

    iput-object p4, p0, Lo/dispatchFinishedWhenDone;->asInterface:Lo/setActive;

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lo/dispatchFinishedWhenDone;->ICustomTabsCallback$Stub:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
    .locals 11

    const-string v0, "pager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x413bd1d

    const-string v3, "pager.context"

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "digest9"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/convertOldPositionToNew;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/convertOldPositionToNew;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_1
    const-string v1, "digest8"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/findAddition;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iget-object v8, p0, Lo/dispatchFinishedWhenDone;->onPostMessage:Lo/endAnimations;

    iget-object v9, p0, Lo/dispatchFinishedWhenDone;->onTransact:Lo/findInterceptingOnItemTouchListener;

    iget-object v10, p0, Lo/dispatchFinishedWhenDone;->asInterface:Lo/setActive;

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lo/findAddition;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;ILo/endAnimations;Lo/findInterceptingOnItemTouchListener;Lo/setActive;)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_2
    const-string v1, "digest7"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/findMatchingItems;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/findMatchingItems;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_3
    const-string v1, "digest6"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/convertNewPositionToOld;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/convertNewPositionToOld;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_4
    const-string v1, "digest5"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/areItemsTheSame;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/areItemsTheSame;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_5
    const-string v1, "digest4"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/addRootSnake;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/addRootSnake;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_6
    const-string v1, "digest3"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/DiffUtil$DiffResult;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/DiffUtil$DiffResult;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_7
    const-string v1, "digest2"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/areContentsTheSame;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/areContentsTheSame;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :pswitch_8
    const-string v1, "digest1"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/DiffUtil$Callback;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/DiffUtil$Callback;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const-string v1, "digest10"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/getChangePayload;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/getChangePayload;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 24
    :cond_1
    :goto_0
    new-instance v0, Lo/DiffUtil$Callback;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {v0, p2, v1, p1}, Lo/DiffUtil$Callback;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    check-cast v0, Landroid/view/View;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62f71aed
        :pswitch_8
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

.method public final extraCallback()I
    .locals 1

    .line 29
    iget-object v0, p0, Lo/dispatchFinishedWhenDone;->onMessageChannelReady:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
