.class public Lin/juspay/mystique/JsInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/mystique/JsInterface$u;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lin/juspay/mystique/DynamicUI;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lin/juspay/mystique/JsInterface$u;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lin/juspay/mystique/DynamicUI;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/mystique/JsInterface;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lin/juspay/mystique/JsInterface;->e:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lin/juspay/mystique/JsInterface;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)I
    .locals 3

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lin/juspay/mystique/JsInterface;)Lin/juspay/mystique/DynamicUI;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-direct {p0, p2, v0}, Lin/juspay/mystique/JsInterface;->a(ILandroid/view/ViewGroup;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic a(Lin/juspay/mystique/JsInterface;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lin/juspay/mystique/JsInterface;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lin/juspay/mystique/JsInterface;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/JsInterface;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lin/juspay/mystique/JsInterface;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/JsInterface;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public Render(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DynamicUI"

    const-string v1, "Method Android.Render is deprecated. Use Android.render() instead"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1, p2}, Lin/juspay/mystique/JsInterface;->render(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Render(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DynamicUI"

    const-string v1, "Method Android.Render is deprecated. Use Android.render() instead"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lin/juspay/mystique/JsInterface;->render(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Lin/juspay/mystique/JsInterface$l;

    invoke-direct {v0, p0, p1}, Lin/juspay/mystique/JsInterface$l;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 1

    .line 13
    new-instance v0, Lin/juspay/mystique/JsInterface$j;

    invoke-direct {v0, p0, p2, p1}, Lin/juspay/mystique/JsInterface$j;-><init>(Lin/juspay/mystique/JsInterface;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addStoredViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v8, Lin/juspay/mystique/JsInterface$o;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lin/juspay/mystique/JsInterface$o;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, v8}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 23
    invoke-virtual/range {v0 .. v5}, Lin/juspay/mystique/JsInterface;->addViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public addViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v7, Lin/juspay/mystique/JsInterface$m;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lin/juspay/mystique/JsInterface$m;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Lorg/json/JSONObject;IZLjava/lang/String;)V

    invoke-direct {p0, v7}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 22
    :catch_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error while parsing "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "JSONERROR"

    invoke-interface {p1, p3, p2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelAnim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/Renderer;->c()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "M_anim_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/mystique/InflateView;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v1, Lin/juspay/mystique/JsInterface$h;

    invoke-direct {v1, p0, v0, p2, p1}, Lin/juspay/mystique/JsInterface$h;-><init>(Lin/juspay/mystique/JsInterface;Landroid/animation/ObjectAnimator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissPopUp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/Renderer;->a()V

    return-void
.end method

.method public dpToPx(I)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v2, "dpToPx, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-lez p1, :cond_1

    .line 6
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public fetchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DUI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "null"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateUIElement(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lin/juspay/mystique/JsInterface$e;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "missing_container"

    const-string p3, "render, no container"

    invoke-interface {p1, p2, p3}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getInternalStorageBaseFilePath()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "juspay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lo/unregisterCallbackListener;->extraCallback()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer()Lin/juspay/mystique/Renderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDimensions()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v1

    const-string v2, "Missing Activity"

    const-string v3, "getScreenDimensions, it is not  activity, it is applicationContext"

    invoke-interface {v1, v2, v3}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"width\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"height\":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "{}"

    return-object v0
.end method

.method public isFilePresent(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public moveView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$q;

    invoke-direct {v0, p0, p1, p2}, Lin/juspay/mystique/JsInterface$q;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "missing_container"

    const-string v0, "moveView, no container"

    invoke-interface {p1, p2, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareAndStoreView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lin/juspay/mystique/JsInterface$n;

    invoke-direct {v2, p0, p1, v0, p3}, Lin/juspay/mystique/JsInterface$n;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 25
    :catch_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error while parsing "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "JSONERROR"

    invoke-interface {p1, p3, p2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeView(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$r;

    invoke-direct {v0, p0, p1}, Lin/juspay/mystique/JsInterface$r;-><init>(Lin/juspay/mystique/JsInterface;I)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "missing_container"

    const-string v1, "removeView, no container"

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "true"

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lin/juspay/mystique/JsInterface;->render(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lin/juspay/mystique/JsInterface$k;

    invoke-direct {v2, p0, v0, p3, p2}, Lin/juspay/mystique/JsInterface$k;-><init>(Lin/juspay/mystique/JsInterface;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_0
    iget-object p3, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p3}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p3

    const-string v0, "missing_activity_or_container"

    const-string v1, "render, it is not activity, it is applicationContext/ no container"

    invoke-interface {p3, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p3, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p3}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "ERROR"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " excep: fn__Render  - missing_activity - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v2}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v2

    invoke-virtual {v2}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 26
    iget-object p3, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\'failure\');"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 30
    :catch_0
    iget-object p2, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p2}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "fn__render - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "JSONERROR"

    invoke-interface {p2, p3, p1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public replaceView(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lin/juspay/mystique/JsInterface$p;

    invoke-direct {v1, p0, v0, p2}, Lin/juspay/mystique/JsInterface$p;-><init>(Lin/juspay/mystique/JsInterface;Lorg/json/JSONObject;I)V

    invoke-direct {p0, v1}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 35
    :catch_0
    iget-object p2, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p2}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fn__replaceView - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONERROR"

    invoke-interface {p2, v0, p1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "missing_container"

    const-string v0, "replaceView, no container"

    invoke-interface {p1, p2, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ",\'failure\');"

    const-string v3, "window.callUICallback("

    const-string v4, "runInUI"

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    iget-object v5, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v5}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v5, p1, v0, v0}, Lin/juspay/mystique/Renderer;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\'success\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    invoke-interface {v0, v4, p1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object p1

    invoke-virtual {p1}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 12
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v1, "run, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing_activity - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 19
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public runInUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 27
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lin/juspay/mystique/JsInterface$t;

    invoke-direct {v0, p0, p1, p2}, Lin/juspay/mystique/JsInterface$t;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "Missing Activity"

    const-string v1, "runInUI, it is not  activity, it is applicationContext"

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " excep: fn__runInUI  - missing_activity - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-interface {p1, v1, v0}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 52
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\'failure\');"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public runInUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$s;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lin/juspay/mystique/JsInterface$s;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p3, "Missing Activity"

    const-string p4, "runInUI, it is not  activity, it is applicationContext"

    invoke-interface {p1, p3, p4}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getErrorCallback()Lin/juspay/mystique/ErrorCallback;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " excep: fn__runInUI  - missing_activity - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p4}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object p4

    invoke-virtual {p4}, Lin/juspay/mystique/Renderer;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ERROR"

    invoke-interface {p1, p4, p3}, Lin/juspay/mystique/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 26
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "window.callUICallback("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\'failure\');"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public runInUIOnView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lin/juspay/mystique/JsInterface$a;

    invoke-direct {v0, p0, p1, p2}, Lin/juspay/mystique/JsInterface$a;-><init>(Lin/juspay/mystique/JsInterface;Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DUI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveState(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface;->a:Ljava/lang/String;

    return-void
.end method

.method public setImage(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$c;

    invoke-direct {v0, p0, p1, p2}, Lin/juspay/mystique/JsInterface$c;-><init>(Lin/juspay/mystique/JsInterface;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "missing_container"

    const-string v0, "setImage, no container"

    invoke-interface {p1, p2, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface;->a:Ljava/lang/String;

    return-void
.end method

.method public showLoading()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DynamicUI"

    const-string v1, "Android.showLoading() method is deprecated. This method does nothing."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showPopup(Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v1}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-interface {v2, p1, v1, p1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lin/juspay/mystique/JsInterface$f;

    invoke-direct {p1, p0, p3}, Lin/juspay/mystique/JsInterface$f;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 16
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "Missing Activity"

    const-string p3, "showPopup, it is not  activity, it is applicationContext"

    invoke-interface {p1, p2, p3}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAnim(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lin/juspay/mystique/JsInterface;->startAnim(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAnim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->e()Lin/juspay/mystique/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/mystique/Renderer;->c()Lin/juspay/mystique/InflateView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/InflateView;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 3
    new-instance v1, Lin/juspay/mystique/JsInterface$g;

    invoke-direct {v1, p0, v0, p2, p1}, Lin/juspay/mystique/JsInterface$g;-><init>(Lin/juspay/mystique/JsInterface;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public throwError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object v0

    const-string v1, "throwError"

    invoke-interface {v0, v1, p1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toggleKeyboard(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$d;

    invoke-direct {v0, p0, p1, p2}, Lin/juspay/mystique/JsInterface$d;-><init>(Lin/juspay/mystique/JsInterface;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "Missing Activity"

    const-string v0, "toggleKeyboard, it is not  activity, it is applicationContext"

    invoke-interface {p1, p2, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAnim(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6
    new-instance v0, Lin/juspay/mystique/JsInterface$i;

    invoke-direct {v0, p0, p1, v1}, Lin/juspay/mystique/JsInterface$i;-><init>(Lin/juspay/mystique/JsInterface;ILorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 18
    :catch_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error parsing json for animation string "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "JSONERROR"

    invoke-interface {p1, v0, p2}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string p2, "missing_container"

    const-string v0, "updateAnim, no container"

    invoke-interface {p1, p2, v0}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateProperties(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lin/juspay/mystique/JsInterface$b;

    invoke-direct {v0, p0, p1}, Lin/juspay/mystique/JsInterface$b;-><init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lin/juspay/mystique/JsInterface;->a(Ljava/lang/Runnable;)V

    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/JsInterface;->b:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->getLogger()Lin/juspay/mystique/DuiLogger;

    move-result-object p1

    const-string v0, "missing_container"

    const-string v1, "updateProperties, no container"

    invoke-interface {p1, v0, v1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
