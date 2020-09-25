.class public final Lo/CommonUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getLegacySharedPrefs;


# instance fields
.field zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lo/convertLongToFourByteBuffer$onNavigationEvent;

.field private zzc:Lo/zzcw;

.field private zzd:Lo/getCpuArchitectureInt;


# direct methods
.method public constructor <init>(Lo/zzcw;Lo/convertLongToFourByteBuffer$onNavigationEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/CommonUtils;->zzb:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    .line 3
    iput-object p1, p0, Lo/CommonUtils;->zzc:Lo/zzcw;

    .line 4
    new-instance p1, Lo/getCpuArchitectureInt;

    invoke-direct {p1, p0}, Lo/getCpuArchitectureInt;-><init>(Lo/CommonUtils;)V

    iput-object p1, p0, Lo/CommonUtils;->zzd:Lo/getCpuArchitectureInt;

    .line 5
    iget-object p2, p0, Lo/CommonUtils;->zzc:Lo/zzcw;

    .line 1037
    iget-object p2, p2, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {p2, p1}, Lo/getCsatResponse;->extraCallback(Lo/setChipIconTint;)V

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CommonUtils;->zza:Ljava/util/Set;

    return-void
.end method

.method static synthetic zza(Lo/CommonUtils;)Lo/convertLongToFourByteBuffer$onNavigationEvent;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/CommonUtils;->zzb:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    return-object p0
.end method


# virtual methods
.method public final zza()Lo/convertLongToFourByteBuffer$onNavigationEvent;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/CommonUtils;->zzb:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    return-object v0
.end method

.method public final zza(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/CommonUtils;->zza:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 10
    iget-object v0, p0, Lo/CommonUtils;->zza:Ljava/util/Set;

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    .line 14
    invoke-static {v2}, Lo/getSharedPrefs;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lo/getSharedPrefs;->zzc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {v2}, Lo/getSharedPrefs;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 20
    iget-object v0, p0, Lo/CommonUtils;->zza:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
