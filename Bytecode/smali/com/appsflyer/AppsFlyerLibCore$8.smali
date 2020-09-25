.class final Lcom/appsflyer/AppsFlyerLibCore$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/ab$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Ι:Ljava/lang/ref/WeakReference;

.field private synthetic ι:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 2390
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:Ljava/util/Map;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->Ι:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ı(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2414
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->Ι:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2415
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2416
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->Ι:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "deeplinkAttribution"

    invoke-static {v0, v1, p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ı(Ljava/lang/String;)V
    .locals 2

    .line 2400
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLibCore$8;->ı(Ljava/util/Map;)V

    .line 2402
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling onAttributionFailure with:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2403
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ɩ(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3408
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3409
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2394
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLibCore$8;->ı(Ljava/util/Map;)V

    .line 2395
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:Ljava/util/Map;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/util/Map;)V

    return-void
.end method
