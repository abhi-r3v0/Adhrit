.class final Lo/getPreventCornerOverlap$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPreventCornerOverlap;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Landroidx/recyclerview/widget/AsyncListDiffer<",
        "Lo/create;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/recyclerview/widget/AsyncListDiffer;",
        "Lcom/dreamplug/androidapp/utils/ListItem;",
        "kotlin.jvm.PlatformType",
        "VH",
        "Lcom/dreamplug/androidapp/utils/DiffAwareHolder;",
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
.field private synthetic ICustomTabsCallback:Lo/getPreventCornerOverlap;


# direct methods
.method constructor <init>(Lo/getPreventCornerOverlap;)V
    .locals 0

    iput-object p1, p0, Lo/getPreventCornerOverlap$onPostMessage;->ICustomTabsCallback:Lo/getPreventCornerOverlap;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1017
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, p0, Lo/getPreventCornerOverlap$onPostMessage;->ICustomTabsCallback:Lo/getPreventCornerOverlap;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance v2, Lo/getPreventCornerOverlap$onPostMessage$5;

    invoke-direct {v2}, Lo/getPreventCornerOverlap$onPostMessage$5;-><init>()V

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-object v0
.end method
