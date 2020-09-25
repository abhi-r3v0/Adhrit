.class public final Lo/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RemoveRepeatsStrategy;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-void
.end method

.method public static extraCallback(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 5

    const v0, 0x1020002

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 29
    :try_start_0
    invoke-static {v2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "MixpanelAPI.ActImgUtils"

    const-string v2, "Not enough memory to produce scaled image, returning a null screenshot"

    .line 31
    invoke-static {v1, v2}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_1
    return-object v1
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Lo/getPersistenceKey;
    .locals 1

    .line 3000
    new-instance v0, Lo/RemoveRepeatsStrategy;

    invoke-direct {v0, p0}, Lo/RemoveRepeatsStrategy;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-object v0
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/RemoveRepeatsStrategy;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$fetchAndActivate$1(Lo/CrashlyticsReportPersistence$$Lambda$4;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
