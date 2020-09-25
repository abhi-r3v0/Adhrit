.class public final Lo/setFontAssetDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/getExecution$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getExecution$onPostMessage;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setFontAssetDelegate;->arg$1:Lo/getExecution$onPostMessage;

    return-void
.end method

.method public static lambdaFactory$(Lo/getExecution$onPostMessage;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/setFontAssetDelegate;

    invoke-direct {v0, p0}, Lo/setFontAssetDelegate;-><init>(Lo/getExecution$onPostMessage;)V

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Lo/setScaleType$extraCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/net/Uri;",
            ")",
            "Lo/setScaleType$extraCallback;"
        }
    .end annotation

    .line 23
    new-instance v0, Lo/setScaleType$extraCallback;

    invoke-direct {v0}, Lo/setScaleType$extraCallback;-><init>()V

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 26
    iget-object v1, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo p0, "viewport_height"

    const-string/jumbo v1, "viewport_width"

    if-eqz p3, :cond_0

    .line 29
    iget-object v2, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    iget-object p3, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p3, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_0
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    const-string/jumbo p3, "scale_type"

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 37
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    iget p3, p5, Landroid/graphics/PointF;->x:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p4, "focus_point_x"

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    iget p3, p5, Landroid/graphics/PointF;->y:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p4, "focus_point_y"

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    const-string p3, "caller_context"

    invoke-interface {p0, p3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_2

    .line 42
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    const-string/jumbo p3, "uri_main"

    invoke-interface {p0, p3, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 45
    iput-object p2, v0, Lo/setScaleType$extraCallback;->onNavigationEvent:Ljava/util/Map;

    if-eqz p6, :cond_4

    .line 46
    iget-object p0, v0, Lo/setScaleType$extraCallback;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 48
    :cond_3
    iput-object p6, v0, Lo/setScaleType$extraCallback;->onNavigationEvent:Ljava/util/Map;

    .line 49
    iget-object p0, v0, Lo/setScaleType$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/setFontAssetDelegate;->arg$1:Lo/getExecution$onPostMessage;

    invoke-static {v0}, Lo/getExecution$onPostMessage;->lambda$scheduleGC$0(Lo/getExecution$onPostMessage;)V

    return-void
.end method
