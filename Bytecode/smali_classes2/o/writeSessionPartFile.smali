.class public final Lo/writeSessionPartFile;
.super Lo/getMappingFileId;
.source ""

# interfaces
.implements Lo/getDueDateText;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getMappingFileId;-><init>()V

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    return-void

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A valid API key must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lo/writeAppExceptionMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/writeSessionPartFile;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;

    iget-object v1, p0, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;->zza()Lo/writeSessionPartFile;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lo/writeSessionPartFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 9
    :cond_1
    check-cast p1, Lo/writeSessionPartFile;

    .line 10
    iget-object v1, p0, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    .line 2001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 10
    iget-boolean v1, p0, Lo/getMappingFileId;->zza:Z

    iget-boolean p1, p1, Lo/getMappingFileId;->zza:Z

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2002
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 11
    iget-boolean v2, p0, Lo/getMappingFileId;->zza:Z

    xor-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final synthetic zza()Lo/getMappingFileId;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/getMappingFileId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeSessionPartFile;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/writeSessionPartFile;->zzb:Ljava/lang/String;

    return-object v0
.end method
