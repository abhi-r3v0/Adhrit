.class Lin/juspay/mystique/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/mystique/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field final synthetic d:Lin/juspay/mystique/a;


# direct methods
.method constructor <init>(Lin/juspay/mystique/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/a$a;->d:Lin/juspay/mystique/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lin/juspay/mystique/a$a;->d:Lin/juspay/mystique/a;

    iget-object v1, p0, Lin/juspay/mystique/a$a;->c:Ljava/lang/String;

    const-string v2, "onAnimationEnd"

    invoke-static {v0, p1, v2, v1}, Lin/juspay/mystique/a;->a(Lin/juspay/mystique/a;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/mystique/a$a;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lin/juspay/mystique/a$a;->d:Lin/juspay/mystique/a;

    iget-object v1, p0, Lin/juspay/mystique/a$a;->a:Ljava/lang/String;

    const-string v2, "onAnimationStart"

    invoke-static {v0, p1, v2, v1}, Lin/juspay/mystique/a;->a(Lin/juspay/mystique/a;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/mystique/a$a;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lin/juspay/mystique/a$a;->d:Lin/juspay/mystique/a;

    iget-object v1, p0, Lin/juspay/mystique/a$a;->b:Ljava/lang/String;

    const-string v2, "onAnimationUpdate"

    invoke-static {v0, p1, v2, v1}, Lin/juspay/mystique/a;->a(Lin/juspay/mystique/a;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/mystique/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/a$a;->a:Ljava/lang/String;

    return-object v0
.end method
