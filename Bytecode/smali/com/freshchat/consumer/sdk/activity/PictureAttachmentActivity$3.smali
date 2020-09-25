.class Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/f/a;


# instance fields
.field final synthetic ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aG()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->c(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->d(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public aH()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->e(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->d(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->c(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->e(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public aI()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->ll:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
