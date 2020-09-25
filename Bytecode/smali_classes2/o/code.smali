.class public final Lo/code;
.super Lo/finalizeReports;
.source ""


# instance fields
.field private zzai:Lo/b$b;

.field private final zzda:Lo/ArticleDetailActivity;


# direct methods
.method constructor <init>(Lo/ArticleDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/finalizeReports;-><init>()V

    .line 2
    iput-object p1, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    .line 3
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/code;->zzai:Lo/b$b;

    return-void
.end method


# virtual methods
.method public final zzbt()Z
    .locals 4

    .line 6
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "ApplicationInfo is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lo/ArticleDetailActivity;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "GoogleAppId is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "AppInstanceId is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "ApplicationProcessState is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->ICustomTabsCallback()Lo/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lo/d$a;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "AndroidAppInfo.packageName is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object v0, p0, Lo/code;->zzda:Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->ICustomTabsCallback()Lo/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lo/d$a;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v3, "AndroidAppInfo.sdkVersion is null"

    invoke-virtual {v0, v3}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    .line 27
    iget-object v0, p0, Lo/code;->zzai:Lo/b$b;

    const-string v1, "ApplicationInfo is invalid"

    invoke-virtual {v0, v1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method
