.class final Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/GridLayoutManager$DefaultSpanSizeLookup;

.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;->onMessageChannelReady:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    iput-object p2, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 121
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stash_final_summary_click_info"

    .line 1147
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1148
    new-instance v0, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v0}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;->onMessageChannelReady:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-static {p1}, Lo/GridLayoutManager$DefaultSpanSizeLookup;->extraCallback(Lo/GridLayoutManager$DefaultSpanSizeLookup;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "info"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "info.context"

    invoke-static {v1, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/computeHorizontalScrollOffset;

    .line 2054
    iget-object v2, p1, Lo/computeHorizontalScrollOffset;->onMessageChannelReady:Ljava/lang/String;

    const p1, 0x7f0600f8

    .line 1148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 121
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
