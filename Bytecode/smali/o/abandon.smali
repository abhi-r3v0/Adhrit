.class public final Lo/abandon;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abandon$onNavigationEvent;,
        Lo/abandon$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/abandon$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method static synthetic extraCallback(Lo/abandon;)Lo/abandon$onPostMessage;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/abandon;->onPostMessage:Lo/abandon$onPostMessage;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/abandon;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 50
    check-cast p1, Lo/abandon$onNavigationEvent;

    .line 1077
    iget-object v0, p1, Lo/abandon$onNavigationEvent;->onPostMessage:Lo/abandon;

    .line 2021
    iget-object v0, v0, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    .line 1077
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    .line 1078
    iget-object v0, p1, Lo/abandon$onNavigationEvent;->onMessageChannelReady:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p1, Lo/abandon$onNavigationEvent;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2086
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object v0

    check-cast v0, Lo/setSwitchTextAppearance;

    .line 1079
    iget-object p2, p2, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->logo_url:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lo/setSwitchTextAppearance;->onMessageChannelReady(Ljava/lang/String;)Lo/getSwitchPadding;

    move-result-object p2

    const v0, 0x7f080300

    invoke-virtual {p2, v0}, Lo/getSwitchPadding;->ICustomTabsCallback(I)Lo/getSwitchPadding;

    move-result-object p2

    iget-object p1, p1, Lo/abandon$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e010e

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lo/abandon$onNavigationEvent;

    invoke-direct {p2, p0, p1}, Lo/abandon$onNavigationEvent;-><init>(Lo/abandon;Landroid/view/View;)V

    return-object p2
.end method
