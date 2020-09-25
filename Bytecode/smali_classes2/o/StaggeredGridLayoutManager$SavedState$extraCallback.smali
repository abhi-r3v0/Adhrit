.class final Lo/StaggeredGridLayoutManager$SavedState$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/setFullSpan;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/widget/navigation/TabListAdapter;",
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
.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager$SavedState;


# direct methods
.method constructor <init>(Lo/StaggeredGridLayoutManager$SavedState;)V
    .locals 0

    iput-object p1, p0, Lo/StaggeredGridLayoutManager$SavedState$extraCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager$SavedState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1038
    new-instance v0, Lo/setFullSpan;

    iget-object v1, p0, Lo/StaggeredGridLayoutManager$SavedState$extraCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager$SavedState;

    .line 1044
    iget-object v1, v1, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 1038
    invoke-direct {v0, v1}, Lo/setFullSpan;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    return-object v0
.end method
