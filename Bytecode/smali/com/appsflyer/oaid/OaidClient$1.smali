.class Lcom/appsflyer/oaid/OaidClient$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/oaid/OaidClient;->fetchMsa()Lcom/appsflyer/oaid/OaidClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/oaid/OaidClient;

.field final synthetic val$oaidHolder:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/appsflyer/oaid/OaidClient;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient$1;->this$0:Lcom/appsflyer/oaid/OaidClient;

    iput-object p2, p0, Lcom/appsflyer/oaid/OaidClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .locals 2

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/appsflyer/oaid/OaidClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    iget-object p2, p0, Lcom/appsflyer/oaid/OaidClient$1;->this$0:Lcom/appsflyer/oaid/OaidClient;

    invoke-static {p2}, Lcom/appsflyer/oaid/OaidClient;->access$000(Lcom/appsflyer/oaid/OaidClient;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "IIdentifierListener"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
