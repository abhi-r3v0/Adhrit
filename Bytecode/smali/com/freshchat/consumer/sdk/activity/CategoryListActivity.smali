.class public Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;


# instance fields
.field private M:Ljava/lang/String;

.field private Q:Landroid/view/View;

.field private S:Landroid/view/View;

.field ac:Landroid/view/View$OnClickListener;

.field private af:Landroidx/recyclerview/widget/RecyclerView;

.field private ag:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Z

.field aj:Lcom/freshchat/consumer/sdk/a/b$a;

.field ak:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private am:Landroid/widget/ProgressBar;

.field private g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private lE:[Ljava/lang/String;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ah:Ljava/util/List;

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->aj:Lcom/freshchat/consumer/sdk/a/b$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ac:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ak:Lo/getCallingPackage$ICustomTabsCallback;

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->am:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void
.end method

.method private E()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ai:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "TAGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ak:Lo/getCallingPackage$ICustomTabsCallback;

    invoke-virtual {v1, v2, v0, v3}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ah:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_category_list:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ai:Z

    :cond_2
    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->lE:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->lE:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ai:Z

    return p0
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    return-object p0
.end method

.method private declared-synchronized eA()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->A()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ez()V
    .locals 3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->z()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->br()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->eA()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_not_connected_to_internet:I

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->E()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->x()V

    return-void
.end method

.method static synthetic g(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ag:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private getColumnCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/p;->a(Landroid/content/Context;Landroid/view/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0x96

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/p;->ar(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/j/af;->i(Landroid/content/Context;I)I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->Q:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->empty:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->Q:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_group:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_start_conversation_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_category_list_progressbar:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->am:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowFaqCategoriesAsGrid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getColumnCount()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/a/b;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ah:Ljava/util/List;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowFaqCategoriesAsGrid()Z

    move-result v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->aj:Lcom/freshchat/consumer/sdk/a/b$a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/a/b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/freshchat/consumer/sdk/a/b$a;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ag:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ag:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private declared-synchronized x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ah:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->eA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->A()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->am:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public D()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->af:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_category_list_recycler_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->af:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->af:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->E()V

    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    const-string v1, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_category_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->M:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->u()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ez()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    :cond_0
    new-instance p1, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fQ:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->lE:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/bg;->c(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_categories_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_categories_menu_item_contact_us:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_categories_menu_item_search_solutions:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->ai:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_categories_menu_item_search_solutions:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->lE:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/j/v;->e([Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fZ:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    const-string/jumbo v0, "source"

    const-string v1, "category_list"

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_categories_menu_item_contact_us:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
