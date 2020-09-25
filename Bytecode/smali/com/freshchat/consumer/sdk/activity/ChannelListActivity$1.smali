.class Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Channel;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;Lcom/freshchat/consumer/sdk/beans/Channel;)V

    return-void
.end method
