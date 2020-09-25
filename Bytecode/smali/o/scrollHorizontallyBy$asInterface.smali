.class final Lo/scrollHorizontallyBy$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollHorizontallyBy;->onNavigationEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/scrollHorizontallyBy;

.field private synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/scrollHorizontallyBy;I)V
    .locals 0

    iput-object p1, p0, Lo/scrollHorizontallyBy$asInterface;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    iput p2, p0, Lo/scrollHorizontallyBy$asInterface;->onMessageChannelReady:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1254
    iget-object v0, p0, Lo/scrollHorizontallyBy$asInterface;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    .line 2037
    iget-object v0, v0, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    .line 1254
    iget v1, p0, Lo/scrollHorizontallyBy$asInterface;->onMessageChannelReady:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lo/scrollHorizontallyBy$asInterface;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    .line 3037
    iget-object v2, v2, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v3, "tenureList"

    .line 1254
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 1270
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1254
    iget v1, p0, Lo/scrollHorizontallyBy$asInterface;->onMessageChannelReady:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lo/scrollHorizontallyBy$asInterface;->onMessageChannelReady:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 37
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
