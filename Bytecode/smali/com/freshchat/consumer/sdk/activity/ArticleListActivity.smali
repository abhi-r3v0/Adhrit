.class public Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;


# instance fields
.field private B:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Lcom/freshchat/consumer/sdk/a/a;

.field private O:Lo/removeQueueItemAt;

.field private P:Landroid/widget/ListView;

.field private Q:Landroid/view/View;

.field private R:Landroidx/appcompat/widget/SearchView;

.field private S:Landroid/view/View;

.field private T:Landroid/view/Menu;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field

.field Z:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field aa:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

.field ab:Landroid/widget/AdapterView$OnItemClickListener;

.field ac:Landroid/view/View$OnClickListener;

.field ad:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private categoryId:Ljava/lang/String;

.field g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private h:Landroid/os/Bundle;

.field private lE:[Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/List;

    const-string v0, "article_list"

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->B:Ljava/lang/String;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Lo/getCallingPackage$ICustomTabsCallback;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aa:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$4;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$4;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ac:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ad:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Lo/removeQueueItemAt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/removeQueueItemAt;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Landroidx/appcompat/widget/SearchView;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    return-object p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Y:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const-string v0, "force_search_open"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Z

    :cond_1
    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    :cond_2
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    :cond_6
    return-void
.end method

.method private a(Landroidx/appcompat/widget/SearchView;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lo/onPostMessage;->onMessageChannelReady()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->actionBarItemBackground:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->z()V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    return p1
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    return p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "search_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object p1

    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Lo/getCallingPackage$ICustomTabsCallback;

    invoke-virtual {p1, v1, v0, v2}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->x()V

    return-void
.end method

.method static synthetic f(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->y()V

    return-void
.end method

.method static synthetic g(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/a/a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Lcom/freshchat/consumer/sdk/a/a;

    return-object p0
.end method

.method private getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->empty:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->P:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    return p0
.end method

.method static synthetic i(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic j(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->v()V

    return-void
.end method

.method static synthetic k(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w()V

    return-void
.end method

.method static synthetic l(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Z

    return p0
.end method

.method static synthetic m(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->t()V

    return-void
.end method

.method static synthetic n(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Ljava/lang/String;

    return-object p0
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fR:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method private t()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "FAQ_TAGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    const/16 v2, 0x6f

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->Z:Lo/getCallingPackage$ICustomTabsCallback;

    invoke-virtual {v1, v2, v0, v3}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method private u()V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_article_list_cl_progressbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/removeQueueItemAt;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Lo/removeQueueItemAt;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->v()V

    return-void
.end method

.method private v()V
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_group:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Landroid/view/Menu;

    if-eqz v0, :cond_1

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private declared-synchronized x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->A()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getEmptyView()Landroid/view/View;

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

.method private y()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Lcom/freshchat/consumer/sdk/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->O:Lo/removeQueueItemAt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/removeQueueItemAt;->onMessageChannelReady()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    const-string p2, "category_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    const-string p2, "category_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->B:Ljava/lang/String;

    const-string p2, "EVENT_LAUNCH_SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    const-string p2, "INPUT_TAGS"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->t()V

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

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->K:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Landroid/view/Menu;

    if-eqz v0, :cond_2

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_solutions:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/onShuffleModeChangedRemoved;->onNavigationEvent(Landroid/view/MenuItem;)Z

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_article_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->h:Landroid/os/Bundle;

    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->M:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->u()V

    new-instance p1, Lcom/freshchat/consumer/sdk/a/a;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->X:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/freshchat/consumer/sdk/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->N:Lcom/freshchat/consumer/sdk/a/a;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->y()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->t()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->s()V

    :cond_0
    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->categoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->lE:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_articles_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->T:Landroid/view/Menu;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_solutions:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1}, Lo/onShuffleModeChangedRemoved;->onPostMessage(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->ad:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_search_query_hint:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->aa:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

    invoke-static {p1, v0}, Lo/onShuffleModeChangedRemoved;->extraCallback(Landroid/view/MenuItem;Lo/onShuffleModeChangedRemoved$onNavigationEvent;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Landroidx/appcompat/widget/SearchView;)V

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->U:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->W:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    invoke-static {p1}, Lo/onShuffleModeChangedRemoved;->ICustomTabsCallback(Landroid/view/MenuItem;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->R:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->w()V

    return v2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_contact_us:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->V:Z

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->invalidateOptionsMenu()V

    return-void
.end method
