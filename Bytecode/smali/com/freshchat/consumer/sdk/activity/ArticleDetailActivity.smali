.class public Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;
.implements Lcom/freshchat/consumer/sdk/activity/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/activity/b;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;",
        "Lcom/freshchat/consumer/sdk/activity/c$b;"
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = "isArticleVoted"

.field private static s:Ljava/lang/String; = "HL_ARTICLE_TITLE"

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;


# instance fields
.field private B:Ljava/lang/String;

.field private C:Z

.field D:Landroid/webkit/WebViewClient;

.field E:Landroid/view/View$OnClickListener;

.field F:Landroid/view/View$OnClickListener;

.field private categoryId:Ljava/lang/String;

.field g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private h:Landroid/os/Bundle;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/freshchat/consumer/sdk/activity/c;

.field private lE:[Ljava/lang/String;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/freshchat/consumer/sdk/b/j;

.field private title:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src=\'file:///freshchat_assets/freshchat_hacks.js\'></script><title>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</title></head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!DOCTYPE html>\t<html>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<body onload=\'correctIframe()\'> <bdi>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->h:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    const-string v1, "article_list"

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->C:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->D:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Article;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "src=\"//"

    const-string/jumbo v3, "src=\"http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value=\"//"

    const-string/jumbo v3, "value=\"http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<\\s*(img|iframe).*?src\\s*=[ \'\"]+http[s]?:\\/\\/.*?>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<div class=\'offline-article-message\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_rich_media_content_cannot_be_displayed:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<div class=\"article-title\";><h3 >"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</h3></div>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<div class=\"article-body\">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</div></bdi></body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->A:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "article_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_failed_to_load:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_failed_to_load:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    :cond_2
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    :cond_3
    const-string v0, "EVENT_LAUNCH_SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Ljava/lang/String;

    :cond_4
    const-string v0, "LAUNCHED_FROM_CONVERSATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->z:Z

    :cond_5
    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->lE:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/service/e/n$a;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fU:Lcom/freshchat/consumer/sdk/service/d/b$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/service/d/b$a;->fV:Lcom/freshchat/consumer/sdk/service/d/b$a;

    :goto_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v1, "category_id"

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    const-string v1, "article_name"

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->lE:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->C:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fS:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->title:Ljava/lang/String;

    const-string v2, "article_name"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->B:Ljava/lang/String;

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->C:Z

    :cond_0
    return-void
.end method

.method private bM()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/j;->bj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/activity/c;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    return-object p0
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_upvote:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->p:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_downvote:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_voting_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_group:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_solution_article_root_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "EXTRA_FETCH_CATEGORY_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lo/getCallingPackage;->ICustomTabsCallback(Landroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    return-object p0
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/d/b$a;->fW:Lcom/freshchat/consumer/sdk/service/d/b$a;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/d/b$a;)V

    const-string/jumbo v1, "source"

    const-string v2, "article_not_helpful"

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    const-string v2, "article_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->categoryId:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/d/b;->dB()V

    return-void
.end method

.method static synthetic h(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m()V

    return-void
.end method

.method static synthetic i(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->z:Z

    return p0
.end method

.method static synthetic j(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    if-nez v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_down:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lo/onPostMessage;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lo/onPostMessage;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$4;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Lo/getCurrentControllerInfo;Lcom/freshchat/consumer/sdk/beans/Article;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Article;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/g/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/freshchat/consumer/sdk/g/j;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/g/j;->dk()Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->s:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->b()V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/freshchat/consumer/sdk/b/j;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/b/j;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->r:Lcom/freshchat/consumer/sdk/b/j;

    return-object v0
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m()V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->o()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->y:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->q()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->h:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->d()V

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_article_detail:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_activity_title_article_detail:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->w:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->c()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->e()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/j;->P(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_article_progress:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/c;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/activity/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->D:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    const/16 v3, 0x55

    invoke-virtual {v2, p0, v3}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c$b;I)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/activity/c;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i:Landroid/view/View;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/freshchat/consumer/sdk/g/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "article_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_FETCH_CATEGORY_INFO"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Lcom/freshchat/consumer/sdk/g/j;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_article_detail_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onDestroy()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/c;->aA()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lo/getCurrentControllerInfo;Lcom/freshchat/consumer/sdk/beans/Article;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onPause()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->onPause()V

    return-void

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->aB()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onResume()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f()Lcom/freshchat/consumer/sdk/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/j;->P(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->bM()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->l:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onStart()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onStop()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
