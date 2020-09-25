.class public final Lo/AudioAttributesCompat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Lo/abandon;

.field onMessageChannelReady:Landroid/view/View;

.field private onNavigationEvent:Landroid/content/Context;

.field private onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/abandon$onPostMessage;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/AudioAttributesCompat;->onNavigationEvent:Landroid/content/Context;

    .line 25
    new-instance p1, Lo/abandon;

    invoke-direct {p1}, Lo/abandon;-><init>()V

    iput-object p1, p0, Lo/AudioAttributesCompat;->ICustomTabsCallback:Lo/abandon;

    .line 1031
    iput-object p2, p1, Lo/abandon;->onPostMessage:Lo/abandon$onPostMessage;

    .line 1035
    iget-object p1, p0, Lo/AudioAttributesCompat;->onNavigationEvent:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 1036
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0e0047

    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesCompat;->onMessageChannelReady:Landroid/view/View;

    const p2, 0x7f0b00d2

    .line 1038
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/AudioAttributesCompat;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 1039
    iget-object p2, p0, Lo/AudioAttributesCompat;->ICustomTabsCallback:Lo/abandon;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    .line 45
    iget v2, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->priority:I

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lo/AudioAttributesCompat;->ICustomTabsCallback:Lo/abandon;

    .line 2035
    iget-object v1, p1, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2036
    iget-object v1, p1, Lo/abandon;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2037
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
