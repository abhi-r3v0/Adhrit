.class Lcom/appsflyer/OaidClient$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/OaidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final lat:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/appsflyer/OaidClient$Info;->id:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/appsflyer/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/appsflyer/OaidClient$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isLat()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/appsflyer/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-object v0
.end method
