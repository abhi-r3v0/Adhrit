.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field final synthetic bm:Z

.field final synthetic bn:Landroid/widget/RatingBar;

.field final synthetic bo:Landroid/widget/EditText;

.field final synthetic bp:Lcom/freshchat/consumer/sdk/beans/Csat;

.field final synthetic bq:Z


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;ZLandroid/widget/RatingBar;Landroid/widget/EditText;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bm:Z

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bn:Landroid/widget/RatingBar;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bo:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bp:Lcom/freshchat/consumer/sdk/beans/Csat;

    iput-boolean p6, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bm:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bn:Landroid/widget/RatingBar;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->f(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bn:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bo:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/b/i;->f(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bo:Landroid/widget/EditText;

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bp:Lcom/freshchat/consumer/sdk/beans/Csat;

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bq:Z

    invoke-static {p1, p2, v0, v4, v5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;->bq:Z

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;JZILjava/lang/String;)V

    return-void
.end method
