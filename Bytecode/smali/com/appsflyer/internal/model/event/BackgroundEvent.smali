.class public abstract Lcom/appsflyer/internal/model/event/BackgroundEvent;
.super Lcom/appsflyer/AFEvent;
.source ""


# instance fields
.field private final ɪ:Z

.field private final ɾ:Z

.field private ӏ:Z


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/model/event/BackgroundEvent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 23
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {p0, p1, p4, p5}, Lcom/appsflyer/AFEvent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ɪ:Z

    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_2
    iput-boolean p1, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ɾ:Z

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFHelper;->convertToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public proxyMode()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ɾ:Z

    return v0
.end method

.method public readResponse()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ɪ:Z

    return v0
.end method

.method public trackingStopped(Z)Lcom/appsflyer/internal/model/event/BackgroundEvent;
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ӏ:Z

    return-object p0
.end method

.method public trackingStopped()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->ӏ:Z

    return v0
.end method
