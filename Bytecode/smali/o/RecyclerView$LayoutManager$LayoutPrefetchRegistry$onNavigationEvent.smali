.class final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "haveInternet",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# direct methods
.method constructor <init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;->onMessageChannelReady:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "haveInternet"

    .line 1059
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1060
    iget-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;->onMessageChannelReady:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {p1, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/appendViewToAllSpans;

    new-instance v9, Lo/appendViewToAllSpans$onNavigationEvent;

    .line 1062
    new-instance v3, Lo/appendViewToAllSpans$ICustomTabsCallback;

    new-instance v0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent$1;

    invoke-direct {v0, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent$1;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;)V

    check-cast v0, Lo/getServerTime;

    const/4 v1, 0x6

    invoke-direct {v3, v0, v1}, Lo/appendViewToAllSpans$ICustomTabsCallback;-><init>(Lo/getServerTime;I)V

    const-wide/16 v4, 0x0

    const v6, 0x7f060139

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v1, "Connection established"

    const-string v2, "Resume app"

    move-object v0, v9

    .line 1060
    invoke-direct/range {v0 .. v8}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    invoke-virtual {p1, v9}, Lo/appendViewToAllSpans;->setData(Lo/appendViewToAllSpans$onNavigationEvent;)V

    return-void

    .line 1066
    :cond_0
    iget-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;->onMessageChannelReady:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {p1, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/appendViewToAllSpans;

    const-string v0, "messageSnackBar"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1067
    iget-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;->onMessageChannelReady:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {p1, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/appendViewToAllSpans;

    invoke-virtual {p1}, Lo/appendViewToAllSpans;->extraCallback()V

    :cond_1
    return-void
.end method
