.class final Lo/abandon$onNavigationEvent;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abandon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/widget/ImageView;

.field onMessageChannelReady:Landroid/widget/TextView;

.field final synthetic onPostMessage:Lo/abandon;


# direct methods
.method constructor <init>(Lo/abandon;Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/abandon$onNavigationEvent;->onPostMessage:Lo/abandon;

    .line 69
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b00d4

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abandon$onNavigationEvent;->onMessageChannelReady:Landroid/widget/TextView;

    const p1, 0x7f0b0624

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const p1, 0x7f0b00d3

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/abandon$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lo/abandon$onNavigationEvent;->onPostMessage:Lo/abandon;

    invoke-static {p1}, Lo/abandon;->extraCallback(Lo/abandon;)Lo/abandon$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lo/abandon$onNavigationEvent;->onPostMessage:Lo/abandon;

    invoke-static {p1}, Lo/abandon;->extraCallback(Lo/abandon;)Lo/abandon$onPostMessage;

    move-result-object p1

    iget-object v0, p0, Lo/abandon$onNavigationEvent;->onPostMessage:Lo/abandon;

    invoke-static {v0}, Lo/abandon;->onPostMessage(Lo/abandon;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    invoke-interface {p1, v0}, Lo/abandon$onPostMessage;->onNavigationEvent(Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;)V

    :cond_0
    return-void
.end method
