.class public Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;


# static fields
.field public static aq:Lcom/freshchat/consumer/sdk/b/e;


# instance fields
.field private P:Landroid/widget/ListView;

.field private Q:Landroid/view/View;

.field private aP:Lcom/freshchat/consumer/sdk/k/b;

.field private am:Landroid/widget/ProgressBar;

.field private an:Lcom/freshchat/consumer/sdk/ConversationOptions;

.field private ao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Lcom/freshchat/consumer/sdk/a/c;

.field private as:Landroid/widget/AdapterView$OnItemClickListener;

.field private at:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private dH:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/ConversationOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ao:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->dH:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->as:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->at:Lo/getCallingPackage$ICustomTabsCallback;

    return-void
.end method

.method private F()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "TAGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const/4 v1, 0x1

    const-string v2, "EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->at:Lo/getCallingPackage$ICustomTabsCallback;

    invoke-virtual {v1, v2, v0, v3}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method private G()Lcom/freshchat/consumer/sdk/b/e;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ao:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;Lcom/freshchat/consumer/sdk/beans/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/beans/Channel;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Channel;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)Lcom/freshchat/consumer/sdk/j/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/m;->c(Lcom/freshchat/consumer/sdk/beans/Channel;)V

    return-void

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->df:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/j/c/a;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/g;->ld:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->al()V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ao:Ljava/util/List;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gd()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gc()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gd()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ge()V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->dH:Z

    return p1
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gb()V

    return-void
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Lcom/freshchat/consumer/sdk/a/c;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ar:Lcom/freshchat/consumer/sdk/a/c;

    return-object p0
.end method

.method private ga()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/b;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->aP:Lcom/freshchat/consumer/sdk/k/b;

    return-void
.end method

.method private gb()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->aP:Lcom/freshchat/consumer/sdk/k/b;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/b;->gq()Lcom/freshchat/consumer/sdk/j/c/a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/c/a;->lr:Lcom/freshchat/consumer/sdk/j/c/a;

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->dH:Z

    if-nez v1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    :cond_0
    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/j/c/a;)V

    return-void
.end method

.method private gc()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->am:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void
.end method

.method private gd()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->am:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private ge()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->am:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_channel_list_listview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->P:Landroid/widget/ListView;

    return-object v0
.end method

.method private u()V
    .locals 3

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_channel_list_empty_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->Q:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_channel_list_progressbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->am:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/freshchat/consumer/sdk/a/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ao:Ljava/util/List;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/freshchat/consumer/sdk/a/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ar:Lcom/freshchat/consumer/sdk/a/c;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ar:Lcom/freshchat/consumer/sdk/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->as:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.ChannelsUpdated"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->F()V

    return-void

    :cond_0
    const-string p2, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gb()V

    return-void

    :cond_1
    const-string p2, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gb()V

    :cond_2
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 4

    const-string v0, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount"

    const-string v1, "com.freshchat.consumer.sdk.actions.ChannelsUpdated"

    const-string v2, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged"

    const-string v3, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->ga()V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_channel_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/l;->c(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/ConversationOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_channel_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->u()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->d(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onResume()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/b$a;->gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gk:Lcom/freshchat/consumer/sdk/service/e/d$a;

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/b;->L(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_not_connected_to_internet:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->F()V

    :cond_2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->gb()V

    return-void
.end method
