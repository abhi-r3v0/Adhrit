.class public final Lo/collectInitialPrefetchPositions;
.super Lo/MediaControllerCompat$MediaControllerImplApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/collectInitialPrefetchPositions$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R0\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullViewPagerAdapter;",
        "Landroidx/fragment/app/FragmentStatePagerAdapter;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "value",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "list",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "getCount",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "position",
        "getItemPosition",
        "object",
        "",
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
.field private static final onMessageChannelReady:Lo/StaggeredGridLayoutManager;

.field public static final onNavigationEvent:Lo/collectInitialPrefetchPositions$onPostMessage;


# instance fields
.field onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/StaggeredGridLayoutManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/collectInitialPrefetchPositions$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/collectInitialPrefetchPositions$onPostMessage;-><init>(B)V

    sput-object v0, Lo/collectInitialPrefetchPositions;->onNavigationEvent:Lo/collectInitialPrefetchPositions$onPostMessage;

    .line 47
    new-instance v0, Lo/collectInitialPrefetchPositions$onMessageChannelReady;

    invoke-direct {v0}, Lo/collectInitialPrefetchPositions$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/StaggeredGridLayoutManager;

    sput-object v0, Lo/collectInitialPrefetchPositions;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    return-void
.end method

.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi24;-><init>(Lo/requestExtraBinder;)V

    .line 3070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 13
    iput-object p1, p0, Lo/collectInitialPrefetchPositions;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Lo/StaggeredGridLayoutManager;
    .locals 1

    .line 11
    sget-object v0, Lo/collectInitialPrefetchPositions;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast p1, Lo/computeScrollExtent;

    .line 3068
    iget-object p1, p1, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final extraCallback()I
    .locals 1

    .line 35
    iget-object v0, p0, Lo/collectInitialPrefetchPositions;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 20
    iget-object v0, p0, Lo/collectInitialPrefetchPositions;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager;

    .line 21
    instance-of v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const-string/jumbo v2, "unknown type object "

    if-eqz v1, :cond_2

    .line 22
    move-object v1, v0

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 1031
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v4, "lr_3"

    .line 22
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2031
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v4, "lr_4"

    .line 22
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lo/computeScrollExtent;->onTransact:Lo/computeScrollExtent$ICustomTabsCallback;

    invoke-static {v1, p1}, Lo/computeScrollExtent$ICustomTabsCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;I)Lo/computeScrollExtent;

    move-result-object p1

    .line 22
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 28
    :cond_2
    sget-object p1, Lo/collectInitialPrefetchPositions;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    sget-object p1, Lo/computeScrollExtent;->onTransact:Lo/computeScrollExtent$ICustomTabsCallback;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2500
    invoke-static {p1, v0}, Lo/computeScrollExtent$ICustomTabsCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;I)Lo/computeScrollExtent;

    move-result-object p1

    .line 29
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
