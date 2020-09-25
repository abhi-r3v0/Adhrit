.class final Lo/canTryConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CommonUtils$1;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo/canTryConnection;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lo/canTryConnection;->zza:I

    .line 3
    iput p2, p0, Lo/canTryConnection;->zzb:I

    if-eqz p3, :cond_1

    .line 4
    check-cast p3, Ljava/util/Map;

    iput-object p3, p0, Lo/canTryConnection;->zzc:Ljava/util/Map;

    .line 5
    invoke-static {}, Lo/canTryConnection;->zza()Z

    return-void

    .line 1002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza()Z
    .locals 3

    const-string v0, "firebear.preference"

    .line 15
    invoke-static {v0}, Lo/extraCallback;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "BiChannelGoogleApi"

    const-string v2, "Found local preference, will always use local service instance"

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Z
    .locals 4

    .line 7
    iget v0, p0, Lo/canTryConnection;->zza:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget v2, p0, Lo/canTryConnection;->zzb:I

    const/4 v3, 0x0

    if-gt v2, v0, :cond_1

    return v3

    .line 11
    :cond_1
    iget-object v0, p0, Lo/canTryConnection;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lo/canTryConnection;->zza:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lo/canTryConnection;->zzb:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lt v0, p1, :cond_3

    return v1

    :cond_3
    return v3
.end method
