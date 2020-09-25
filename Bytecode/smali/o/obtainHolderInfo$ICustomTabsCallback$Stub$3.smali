.class final Lo/obtainHolderInfo$ICustomTabsCallback$Stub$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/obtainHolderInfo$ICustomTabsCallback$Stub;
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
.field private synthetic ICustomTabsCallback:Lo/obtainHolderInfo$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/obtainHolderInfo$ICustomTabsCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub$3;->ICustomTabsCallback:Lo/obtainHolderInfo$ICustomTabsCallback$Stub;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1153
    iget-object v0, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub$3;->ICustomTabsCallback:Lo/obtainHolderInfo$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 2054
    iget-object v0, v0, Lo/obtainHolderInfo;->asBinder:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "staggeredLayoutManager"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1153
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 44
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
