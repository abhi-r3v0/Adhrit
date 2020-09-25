.class final Lo/getRewardTemplateType;
.super Lo/setTotalDue;
.source ""


# instance fields
.field private final synthetic extraCallback:Landroid/content/Intent;

.field private final synthetic onNavigationEvent:Lo/Transaction;

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lo/Transaction;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getRewardTemplateType;->extraCallback:Landroid/content/Intent;

    iput-object p2, p0, Lo/getRewardTemplateType;->onNavigationEvent:Lo/Transaction;

    iput p3, p0, Lo/getRewardTemplateType;->onPostMessage:I

    invoke-direct {p0}, Lo/setTotalDue;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/getRewardTemplateType;->extraCallback:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lo/getRewardTemplateType;->onNavigationEvent:Lo/Transaction;

    iget v2, p0, Lo/getRewardTemplateType;->onPostMessage:I

    invoke-interface {v1, v0, v2}, Lo/Transaction;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
