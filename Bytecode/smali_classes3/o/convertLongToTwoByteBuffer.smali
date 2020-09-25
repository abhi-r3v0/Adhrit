.class public final Lo/convertLongToTwoByteBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getLegacySharedPrefs;


# instance fields
.field private zza:Lo/convertLongToFourByteBuffer$onNavigationEvent;

.field private zzb:Lo/zzcw;

.field private zzc:Lo/streamToString;


# direct methods
.method public constructor <init>(Lo/zzcw;Lo/convertLongToFourByteBuffer$onNavigationEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/convertLongToTwoByteBuffer;->zza:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    .line 3
    iput-object p1, p0, Lo/convertLongToTwoByteBuffer;->zzb:Lo/zzcw;

    .line 4
    new-instance p1, Lo/streamToString;

    invoke-direct {p1, p0}, Lo/streamToString;-><init>(Lo/convertLongToTwoByteBuffer;)V

    iput-object p1, p0, Lo/convertLongToTwoByteBuffer;->zzc:Lo/streamToString;

    .line 5
    iget-object p2, p0, Lo/convertLongToTwoByteBuffer;->zzb:Lo/zzcw;

    .line 1037
    iget-object p2, p2, Lo/zzcw;->onPostMessage:Lo/getCsatResponse;

    invoke-virtual {p2, p1}, Lo/getCsatResponse;->extraCallback(Lo/setChipIconTint;)V

    return-void
.end method

.method static synthetic zza(Lo/convertLongToTwoByteBuffer;)Lo/convertLongToFourByteBuffer$onNavigationEvent;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/convertLongToTwoByteBuffer;->zza:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    return-object p0
.end method


# virtual methods
.method public final zza()Lo/convertLongToFourByteBuffer$onNavigationEvent;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/convertLongToTwoByteBuffer;->zza:Lo/convertLongToFourByteBuffer$onNavigationEvent;

    return-object v0
.end method

.method public final zza(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method
