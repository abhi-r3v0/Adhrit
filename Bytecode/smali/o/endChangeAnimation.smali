.class public final Lo/endChangeAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/endChangeAnimation$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTAAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
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
.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/endChangeAnimation;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x6979

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    new-instance p2, Lo/getNewListSize;

    iget-object v0, p0, Lo/endChangeAnimation;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getNewListSize;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz p1, :cond_0

    const/16 p1, 0x6979

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
