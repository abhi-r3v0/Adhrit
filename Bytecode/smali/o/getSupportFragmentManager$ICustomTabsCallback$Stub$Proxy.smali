.class final Lo/getSupportFragmentManager$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSupportFragmentManager;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$updateUi$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getSupportFragmentManager;

.field private synthetic onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/getSupportFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lo/getSupportFragmentManager$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/getSupportFragmentManager$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getSupportFragmentManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1196
    iget-object v0, p0, Lo/getSupportFragmentManager$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v0}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;)Lo/onPrepareOptionsPanel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2028
    iput-boolean v1, v0, Lo/onPrepareOptionsPanel;->extraCallback:Z

    .line 1197
    iget-object v0, p0, Lo/getSupportFragmentManager$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 42
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
