.class public final Lo/getSessionDirectoryById;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzag:Lo/setPhone;

.field private zzdp:Z

.field private final zzfc:F

.field private zzfd:Lo/capFinalizedReports;

.field private zzfe:Lo/capFinalizedReports;


# direct methods
.method private constructor <init>(DJLo/b$a;FLo/setPhone;)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lo/getSessionDirectoryById;->zzdp:Z

    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lo/getSessionDirectoryById;->zzfd:Lo/capFinalizedReports;

    .line 9
    iput-object v3, v0, Lo/getSessionDirectoryById;->zzfe:Lo/capFinalizedReports;

    const/4 v3, 0x0

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    .line 10
    invoke-static {v2, v3}, Lo/bZ;->extraCallback(ZLjava/lang/Object;)V

    .line 11
    iput v1, v0, Lo/getSessionDirectoryById;->zzfc:F

    move-object/from16 v1, p7

    .line 12
    iput-object v1, v0, Lo/getSessionDirectoryById;->zzag:Lo/setPhone;

    .line 13
    new-instance v2, Lo/capFinalizedReports;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const-wide/16 v7, 0x1f4

    iget-boolean v12, v0, Lo/getSessionDirectoryById;->zzdp:Z

    const-string v11, "Trace"

    move-object v4, v2

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v12}, Lo/capFinalizedReports;-><init>(DJLo/b$a;Lo/setPhone;Ljava/lang/String;Z)V

    iput-object v2, v0, Lo/getSessionDirectoryById;->zzfd:Lo/capFinalizedReports;

    .line 14
    new-instance v2, Lo/capFinalizedReports;

    iget-boolean v12, v0, Lo/getSessionDirectoryById;->zzdp:Z

    const-string v11, "Network"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lo/capFinalizedReports;-><init>(DJLo/b$a;Lo/setPhone;Ljava/lang/String;Z)V

    iput-object v2, v0, Lo/getSessionDirectoryById;->zzfe:Lo/capFinalizedReports;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;DJ)V
    .locals 8

    .line 1
    new-instance v5, Lo/b$a;

    invoke-direct {v5}, Lo/b$a;-><init>()V

    .line 2
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    .line 3
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v7

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/getSessionDirectoryById;-><init>(DJLo/b$a;FLo/setPhone;)V

    .line 4
    invoke-static {p1}, Lo/ba;->onPostMessage(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lo/getSessionDirectoryById;->zzdp:Z

    return-void
.end method

.method private static zzb(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ArticleListActivity$3;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArticleListActivity$3;

    invoke-virtual {v0}, Lo/ArticleListActivity$3;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ArticleListActivity$3;

    invoke-virtual {p0, v1}, Lo/ArticleListActivity$3;->ICustomTabsCallback(I)Lo/ArticleListActivity$4;

    move-result-object p0

    sget-object v0, Lo/ArticleListActivity$4;->extraCallback:Lo/ArticleListActivity$4;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method final zzb(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzfd:Lo/capFinalizedReports;

    invoke-virtual {v0, p1}, Lo/capFinalizedReports;->zzb(Z)V

    .line 54
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzfe:Lo/capFinalizedReports;

    invoke-virtual {v0, p1}, Lo/capFinalizedReports;->zzb(Z)V

    return-void
.end method

.method final zzb(Lo/onMenuItemActionCollapse;)Z
    .locals 4

    .line 16
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzag:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->ICustomTabsCallback$Stub()F

    move-result v0

    .line 19
    iget v3, p0, Lo/getSessionDirectoryById;->zzfc:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object v0

    invoke-virtual {v0}, Lo/getColumnCount;->asInterface()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionDirectoryById;->zzb(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 23
    :cond_1
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzag:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->onRelationshipValidationResult()F

    move-result v0

    .line 26
    iget v3, p0, Lo/getSessionDirectoryById;->zzfc:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->asBinder()Lo/ArticleDetailActivity$2$1$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->mayLaunchUrl()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionDirectoryById;->zzb(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 31
    :cond_3
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lo/getRootView;->onMessageChannelReady:Lo/getRootView;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lo/getRootView;->ICustomTabsCallback$Stub:Lo/getRootView;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    :cond_4
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object v0

    invoke-virtual {v0}, Lo/getColumnCount;->ICustomTabsCallback()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    return v1

    .line 45
    :cond_7
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzfe:Lo/capFinalizedReports;

    invoke-virtual {v0, p1}, Lo/capFinalizedReports;->zzb(Lo/onMenuItemActionCollapse;)Z

    move-result p1

    return p1

    .line 47
    :cond_8
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Lo/getSessionDirectoryById;->zzfd:Lo/capFinalizedReports;

    invoke-virtual {v0, p1}, Lo/capFinalizedReports;->zzb(Lo/onMenuItemActionCollapse;)Z

    move-result p1

    return p1

    :cond_9
    return v2
.end method
