.class final Lcom/appsflyer/internal/x$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ı:Lcom/appsflyer/internal/x;

.field private synthetic ι:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/x;Ljava/util/Map;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/appsflyer/internal/x$3;->ı:Lcom/appsflyer/internal/x;

    iput-object p2, p0, Lcom/appsflyer/internal/x$3;->ι:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/appsflyer/internal/x$3;->ı:Lcom/appsflyer/internal/x;

    iget-object v1, p0, Lcom/appsflyer/internal/x$3;->ι:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/internal/x;->ι(Lcom/appsflyer/internal/x;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/x$3;->ı:Lcom/appsflyer/internal/x;

    invoke-static {v3}, Lcom/appsflyer/internal/x;->ǃ(Lcom/appsflyer/internal/x;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/internal/x;->Ι(Lcom/appsflyer/internal/x;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
