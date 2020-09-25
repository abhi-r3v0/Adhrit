.class public final Lo/writeSessionUser;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/writeSessionUser;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lo/writeSessionUser;->zzd(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/writeSessionUser;->zzb:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lo/writeSessionUser;->zzc:I

    return-void
.end method

.method public static zzb()Lo/writeSessionUser;
    .locals 3

    .line 9
    new-instance v0, Lo/writeSessionUser;

    const-string v1, "firebase-auth-compat"

    .line 10
    invoke-static {v1}, Lo/writeSessionUser;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lo/writeSessionUser;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "firebase-auth"

    .line 14
    invoke-static {v0}, Lo/writeSessionUser;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1001
    sget-object v0, Lo/setCardDetails;->ICustomTabsCallback:Lo/setCardDetails;

    .line 15
    invoke-virtual {v0, p0}, Lo/setCardDetails;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "-1"

    :cond_1
    return-object p0
.end method

.method private static zzd(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "[.-]"

    .line 19
    invoke-static {v4}, Lo/cb;->ICustomTabsCallback(Ljava/lang/String;)Lo/cb;

    move-result-object v4

    invoke-virtual {v4, p0}, Lo/cb;->onNavigationEvent(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 22
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v2, :cond_1

    .line 23
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0xf4240

    mul-int v5, v5, v6

    .line 24
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    .line 25
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, p0

    return v5

    :catch_0
    move-exception v4

    const-string v5, "LibraryVersionContainer"

    .line 29
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object v4, v1, v3

    const-string p0, "Version code parsing failed for: %s with exception %s."

    .line 31
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 3

    .line 6
    iget v0, p0, Lo/writeSessionUser;->zzb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "X%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget v0, p0, Lo/writeSessionUser;->zzc:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Z
    .locals 1

    .line 12
    iget v0, p0, Lo/writeSessionUser;->zzb:I

    invoke-static {p1}, Lo/writeSessionUser;->zzd(Ljava/lang/String;)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget v0, p0, Lo/writeSessionUser;->zzb:I

    invoke-static {p1}, Lo/writeSessionUser;->zzd(Ljava/lang/String;)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
