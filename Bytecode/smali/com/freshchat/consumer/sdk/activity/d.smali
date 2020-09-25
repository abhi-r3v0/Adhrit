.class Lcom/freshchat/consumer/sdk/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field final synthetic bm:Z


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/d;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/d;->bm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    check-cast p1, Lo/onTransact;

    .line 1131
    iget-object p1, p1, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 1410
    iget-object p1, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/d;->bm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
