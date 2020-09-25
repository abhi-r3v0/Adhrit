.class final Lo/hasGapsToFix$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasGapsToFix;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/checkSpanForGap<",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/utils/list/AsyncListDiffer;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "VH",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field final synthetic onMessageChannelReady:Lo/hasGapsToFix;


# direct methods
.method constructor <init>(Lo/hasGapsToFix;)V
    .locals 0

    iput-object p1, p0, Lo/hasGapsToFix$extraCallback;->onMessageChannelReady:Lo/hasGapsToFix;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1016
    new-instance v0, Lo/checkSpanForGap;

    iget-object v1, p0, Lo/hasGapsToFix$extraCallback;->onMessageChannelReady:Lo/hasGapsToFix;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance v2, Lo/hasGapsToFix$extraCallback$4;

    invoke-direct {v2}, Lo/hasGapsToFix$extraCallback$4;-><init>()V

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, v1, v2}, Lo/checkSpanForGap;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 1028
    new-instance v1, Lo/hasGapsToFix$extraCallback$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/hasGapsToFix$extraCallback$onNavigationEvent;-><init>(Lo/hasGapsToFix$extraCallback;)V

    check-cast v1, Lo/getServerTime;

    .line 1164
    iput-object v1, v0, Lo/checkSpanForGap;->onPostMessage:Lo/getServerTime;

    return-object v0
.end method
