.class final Lo/findFirstReferenceChild$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Integer;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$ICustomTabsService;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 45
    check-cast p1, Ljava/lang/Integer;

    .line 1197
    iget-object v0, p0, Lo/findFirstReferenceChild$ICustomTabsService;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->warmup(Lo/findFirstReferenceChild;)Lo/findFirstReferenceChild$ICustomTabsCallback$3;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1198
    iget-object p1, p0, Lo/findFirstReferenceChild$ICustomTabsService;->onPostMessage:Lo/findFirstReferenceChild;

    .line 1257
    iget-object p1, p1, Lo/findFirstReferenceChild;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_0

    const-string v0, "categoryLinearLayoutManager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lo/findFirstReferenceChild$ICustomTabsService;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->warmup(Lo/findFirstReferenceChild;)Lo/findFirstReferenceChild$ICustomTabsCallback$3;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
