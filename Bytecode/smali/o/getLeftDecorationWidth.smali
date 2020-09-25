.class public final Lo/getLeftDecorationWidth;
.super Lo/MediaControllerCompat$MediaControllerImplApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getLeftDecorationWidth$extraCallback;
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
        "Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineViewPagerAdapter;",
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

.field public static final onNavigationEvent:Lo/getLeftDecorationWidth$extraCallback;


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

    new-instance v0, Lo/getLeftDecorationWidth$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getLeftDecorationWidth$extraCallback;-><init>(B)V

    sput-object v0, Lo/getLeftDecorationWidth;->onNavigationEvent:Lo/getLeftDecorationWidth$extraCallback;

    .line 47
    new-instance v0, Lo/getLeftDecorationWidth$onMessageChannelReady;

    invoke-direct {v0}, Lo/getLeftDecorationWidth$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/StaggeredGridLayoutManager;

    sput-object v0, Lo/getLeftDecorationWidth;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    return-void
.end method

.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi24;-><init>(Lo/requestExtraBinder;)V

    .line 5070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 13
    iput-object p1, p0, Lo/getLeftDecorationWidth;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Lo/StaggeredGridLayoutManager;
    .locals 1

    .line 11
    sget-object v0, Lo/getLeftDecorationWidth;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast p1, Lo/onInterceptFocusSearch;

    .line 5044
    iget-object p1, p1, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

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
    iget-object v0, p0, Lo/getLeftDecorationWidth;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 20
    iget-object v0, p0, Lo/getLeftDecorationWidth;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager;

    .line 21
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const-string/jumbo v1, "unknown type object "

    if-eqz v0, :cond_2

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 1031
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_3"

    .line 22
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2031
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_4"

    .line 22
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 23
    :cond_1
    :goto_0
    sget-object p1, Lo/onInterceptFocusSearch;->extraCallback:Lo/onInterceptFocusSearch$onNavigationEvent;

    .line 2269
    new-instance p1, Lo/onInterceptFocusSearch;

    invoke-direct {p1}, Lo/onInterceptFocusSearch;-><init>()V

    .line 3044
    iput-object v0, p1, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 22
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 28
    :cond_2
    sget-object v0, Lo/getLeftDecorationWidth;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    sget-object p1, Lo/onInterceptFocusSearch;->extraCallback:Lo/onInterceptFocusSearch$onNavigationEvent;

    .line 3269
    new-instance p1, Lo/onInterceptFocusSearch;

    invoke-direct {p1}, Lo/onInterceptFocusSearch;-><init>()V

    const/4 v0, 0x0

    .line 4044
    iput-object v0, p1, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 29
    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
