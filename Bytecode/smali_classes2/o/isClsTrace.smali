.class public Lo/isClsTrace;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/isClsTrace;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/isClsTrace;->zzb:Ljava/util/Map;

    return-void
.end method

.method private final zza(Ljava/lang/String;)J
    .locals 2

    .line 18
    iget-object v0, p0, Lo/isClsTrace;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAuthTimestamp()J
    .locals 2

    const-string v0, "auth_time"

    .line 7
    invoke-direct {p0, v0}, Lo/isClsTrace;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClaims()Ljava/util/Map;
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

    .line 17
    iget-object v0, p0, Lo/isClsTrace;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public getExpirationTimestamp()J
    .locals 2

    const-string v0, "exp"

    .line 6
    invoke-direct {p0, v0}, Lo/isClsTrace;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIssuedAtTimestamp()J
    .locals 2

    const-string v0, "iat"

    .line 8
    invoke-direct {p0, v0}, Lo/isClsTrace;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignInProvider()Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lo/isClsTrace;->zzb:Ljava/util/Map;

    const-string v1, "firebase"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "sign_in_provider"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignInSecondFactor()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lo/isClsTrace;->zzb:Ljava/util/Map;

    const-string v1, "firebase"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "sign_in_second_factor"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/isClsTrace;->zza:Ljava/lang/String;

    return-object v0
.end method
