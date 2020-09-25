.class public Lcom/appsflyer/oaid/OaidClient$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/oaid/OaidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final lat:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient$Info;->id:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/appsflyer/oaid/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-object v0
.end method
