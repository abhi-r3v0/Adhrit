.class final Lo/getCount;
.super Lo/setTotalDue;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/content/Intent;

.field private final synthetic extraCallback:Landroid/app/Activity;

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getCount;->ICustomTabsCallback:Landroid/content/Intent;

    iput-object p2, p0, Lo/getCount;->extraCallback:Landroid/app/Activity;

    iput p3, p0, Lo/getCount;->onPostMessage:I

    invoke-direct {p0}, Lo/setTotalDue;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/getCount;->ICustomTabsCallback:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lo/getCount;->extraCallback:Landroid/app/Activity;

    iget v2, p0, Lo/getCount;->onPostMessage:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
