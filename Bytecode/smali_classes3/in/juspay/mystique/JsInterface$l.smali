.class Lin/juspay/mystique/JsInterface$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/JsInterface;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lin/juspay/mystique/JsInterface;


# direct methods
.method constructor <init>(Lin/juspay/mystique/JsInterface;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$l;->b:Lin/juspay/mystique/JsInterface;

    iput-object p2, p0, Lin/juspay/mystique/JsInterface$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$l;->b:Lin/juspay/mystique/JsInterface;

    invoke-static {v0}, Lin/juspay/mystique/JsInterface;->c(Lin/juspay/mystique/JsInterface;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/JsInterface$l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/mystique/JsInterface$u;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lin/juspay/mystique/JsInterface$l;->b:Lin/juspay/mystique/JsInterface;

    invoke-static {v1}, Lin/juspay/mystique/JsInterface;->c(Lin/juspay/mystique/JsInterface;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/mystique/JsInterface$l;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lin/juspay/mystique/JsInterface$l;->b:Lin/juspay/mystique/JsInterface;

    iget-object v4, v0, Lin/juspay/mystique/JsInterface$u;->a:Ljava/lang/String;

    iget-object v5, v0, Lin/juspay/mystique/JsInterface$u;->b:Ljava/lang/String;

    iget v6, v0, Lin/juspay/mystique/JsInterface$u;->c:I

    iget-object v7, v0, Lin/juspay/mystique/JsInterface$u;->d:Ljava/lang/String;

    iget-boolean v8, v0, Lin/juspay/mystique/JsInterface$u;->e:Z

    iget-object v9, v0, Lin/juspay/mystique/JsInterface$u;->f:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lin/juspay/mystique/JsInterface;->addStoredViewToParent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
