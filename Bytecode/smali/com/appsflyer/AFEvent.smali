.class public abstract Lcom/appsflyer/AFEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ı:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public Ɩ:Ljava/lang/String;

.field public ǃ:Landroid/content/Intent;

.field ȷ:Z

.field public ɨ:I

.field ɩ:Lcom/appsflyer/AppsFlyerTrackingRequestListener;

.field private ɪ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ɹ:Ljava/lang/String;

.field private final ɾ:Z

.field private ɿ:[B

.field Ι:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ι:Landroid/content/Context;

.field І:Ljava/lang/String;

.field і:Ljava/lang/String;

.field Ӏ:Ljava/lang/String;

.field private ӏ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, v0, v0}, Lcom/appsflyer/AFEvent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->Ӏ:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/AFEvent;->ɾ:Z

    .line 45
    iput-object p3, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected addChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "channel"

    .line 223
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ı:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    return-object p0
.end method

.method public intent()Landroid/content/Intent;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ǃ:Landroid/content/Intent;

    return-object v0
.end method

.method public isEncrypt()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->ɾ:Z

    return v0
.end method

.method public key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->ӏ:Ljava/lang/String;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ӏ:Ljava/lang/String;

    return-object v0
.end method

.method public params(Ljava/util/Map;)Lcom/appsflyer/AFEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/appsflyer/AFEvent;"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->ɪ:Ljava/util/Map;

    return-object p0
.end method

.method public params()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ɪ:Ljava/util/Map;

    return-object v0
.end method

.method public post([B)Lcom/appsflyer/AFEvent;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->ɿ:[B

    return-object p0
.end method

.method public urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->і:Ljava/lang/String;

    return-object p0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->і:Ljava/lang/String;

    return-object v0
.end method

.method public weakContext()Lcom/appsflyer/AFEvent;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AFEvent;->ı:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    return-object p0
.end method

.method final ǃ()Lcom/appsflyer/AFEvent;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFEvent;->ι:Landroid/content/Context;

    :cond_0
    return-object p0
.end method

.method final Ι()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->ȷ:Z

    return v0
.end method

.method final ι()[B
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->ɿ:[B

    return-object v0
.end method
