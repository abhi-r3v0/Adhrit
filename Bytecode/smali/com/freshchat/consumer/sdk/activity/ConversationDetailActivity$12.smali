.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/az$a;


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field final synthetic iD:Landroid/net/Uri;

.field final synthetic kJ:I


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->iD:Landroid/net/Uri;

    iput p3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->kJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/j/az$c;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/f;->hF:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kM:Lcom/freshchat/consumer/sdk/b/c;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kN:Lcom/freshchat/consumer/sdk/b/c;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kO:Lcom/freshchat/consumer/sdk/b/c;

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return-void
.end method

.method public fQ()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->iD:Landroid/net/Uri;

    iget v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->kJ:I

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/net/Uri;I)V

    return-void
.end method
