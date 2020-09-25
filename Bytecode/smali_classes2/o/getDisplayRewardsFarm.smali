.class final Lo/getDisplayRewardsFarm;
.super Lo/setTotalDue;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:I

.field private final synthetic onNavigationEvent:Landroid/content/Intent;

.field private final synthetic onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getDisplayRewardsFarm;->onNavigationEvent:Landroid/content/Intent;

    iput-object p2, p0, Lo/getDisplayRewardsFarm;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lo/getDisplayRewardsFarm;->ICustomTabsCallback:I

    invoke-direct {p0}, Lo/setTotalDue;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/getDisplayRewardsFarm;->onNavigationEvent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lo/getDisplayRewardsFarm;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lo/getDisplayRewardsFarm;->ICustomTabsCallback:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
