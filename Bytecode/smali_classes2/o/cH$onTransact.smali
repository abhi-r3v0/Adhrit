.class public final Lo/cH$onTransact;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$onTransact$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$onTransact;",
        "Lo/cH$onTransact$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzaw:Lo/cH$onTransact;

.field private static volatile zzax:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$onTransact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaa:I

.field private zzab:Ljava/lang/String;

.field private zzac:Ljava/lang/String;

.field private zzad:Z

.field private zzae:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzaf:Ljava/lang/String;

.field private zzag:I

.field private zzah:I

.field private zzai:I

.field private zzaj:Ljava/lang/String;

.field private zzak:J

.field private zzal:J

.field private zzam:Ljava/lang/String;

.field private zzan:Ljava/lang/String;

.field private zzao:I

.field private zzap:Ljava/lang/String;

.field private zzaq:Lo/cH$ICustomTabsCallback$Stub;

.field private zzar:Lo/fd;

.field private zzas:J

.field private zzat:J

.field private zzau:Ljava/lang/String;

.field private zzav:Ljava/lang/String;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$newSession;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:I

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/lang/String;

.field private zzt:Ljava/lang/String;

.field private zzu:J

.field private zzv:J

.field private zzw:Ljava/lang/String;

.field private zzx:Z

.field private zzy:Ljava/lang/String;

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 393
    new-instance v0, Lo/cH$onTransact;

    invoke-direct {v0}, Lo/cH$onTransact;-><init>()V

    .line 394
    sput-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 395
    const-class v1, Lo/cH$onTransact;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cH$onTransact;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    .line 3
    invoke-static {}, Lo/cH$onTransact;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lo/cH$onTransact;->zzm:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lo/cH$onTransact;->zzn:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lo/cH$onTransact;->zzo:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lo/cH$onTransact;->zzp:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lo/cH$onTransact;->zzr:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lo/cH$onTransact;->zzs:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lo/cH$onTransact;->zzt:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lo/cH$onTransact;->zzw:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lo/cH$onTransact;->zzy:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lo/cH$onTransact;->zzab:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lo/cH$onTransact;->zzac:Ljava/lang/String;

    .line 15
    invoke-static {}, Lo/cH$onTransact;->onItemLoaded()Lo/ay$1;

    move-result-object v1

    iput-object v1, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    .line 16
    iput-object v0, p0, Lo/cH$onTransact;->zzaf:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lo/cH$onTransact;->zzaj:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lo/cH$onTransact;->zzam:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lo/cH$onTransact;->zzan:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lo/cH$onTransact;->zzap:Ljava/lang/String;

    .line 21
    invoke-static {}, Lo/cH$onTransact;->onError()Lo/fd;

    move-result-object v1

    iput-object v1, p0, Lo/cH$onTransact;->zzar:Lo/fd;

    .line 22
    iput-object v0, p0, Lo/cH$onTransact;->zzau:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lo/cH$onTransact;->zzav:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$ItemReceiver()V

    .line 74
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final ICustomTabsCallback(ILo/cH$newSession;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$ItemReceiver()V

    .line 64
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final ICustomTabsCallback(J)V
    .locals 1

    .line 88
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 89
    iput-wide p1, p0, Lo/cH$onTransact;->zzj:J

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lo/cH$onTransact;->zzar:Lo/fd;

    .line 286
    invoke-interface {v0}, Lo/fd;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-interface {v0}, Lo/fd;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 292
    :goto_0
    invoke-interface {v0, v1}, Lo/fd;->extraCallback(I)Lo/fd;

    move-result-object v0

    .line 293
    iput-object v0, p0, Lo/cH$onTransact;->zzar:Lo/fd;

    .line 294
    :cond_1
    iget-object v0, p0, Lo/cH$onTransact;->zzar:Lo/fd;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 120
    iput-object p1, p0, Lo/cH$onTransact;->zzo:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onTransact;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21$1()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onTransact;I)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onPostMessage(I)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onTransact;J)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->onNavigationEvent(J)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onTransact;Ljava/lang/Iterable;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onPostMessage(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback$Stub(J)V
    .locals 2

    .line 256
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 257
    iput-wide p1, p0, Lo/cH$onTransact;->zzal:J

    return-void
.end method

.method private final ICustomTabsCallback$Stub(Ljava/lang/String;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 140
    iput-object p1, p0, Lo/cH$onTransact;->zzs:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/cH$onTransact;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21$3()V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/cH$onTransact;I)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lo/cH$onTransact;->asInterface(I)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/cH$onTransact;J)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->onRelationshipValidationResult(J)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onTransact(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback$Stub$Proxy(J)V
    .locals 1

    .line 298
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 299
    iput-wide p1, p0, Lo/cH$onTransact;->zzas:J

    return-void
.end method

.method private final ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 211
    iput-object p1, p0, Lo/cH$onTransact;->zzac:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/cH$onTransact;J)V
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback$Stub$Proxy(J)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsService(Ljava/lang/String;)V
    .locals 2

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 262
    iput-object p1, p0, Lo/cH$onTransact;->zzam:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsService(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lo/cH$onTransact;->warmup(Ljava/lang/String;)V

    return-void
.end method

.method public static MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 315
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$onTransact$extraCallback;

    return-object v0
.end method

.method private final MediaBrowserCompat$ItemReceiver()V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    .line 58
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    :cond_0
    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImpl()V
    .locals 2

    .line 33
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    .line 34
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    :cond_0
    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21()V
    .locals 2

    .line 96
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lo/cH$onTransact;->zzk:J

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21$1()V
    .locals 2

    .line 162
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 164
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 165
    iget-object v0, v0, Lo/cH$onTransact;->zzw:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lo/cH$onTransact;->zzw:Ljava/lang/String;

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21$2()V
    .locals 2

    .line 202
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 204
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 205
    iget-object v0, v0, Lo/cH$onTransact;->zzab:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lo/cH$onTransact;->zzab:Ljava/lang/String;

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21$3()V
    .locals 1

    .line 226
    invoke-static {}, Lo/cH$onTransact;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21$4()V
    .locals 2

    .line 173
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lo/cH$onTransact;->zzx:Z

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi21$5()V
    .locals 2

    .line 243
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 245
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 246
    iget-object v0, v0, Lo/cH$onTransact;->zzaj:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lo/cH$onTransact;->zzaj:Ljava/lang/String;

    return-void
.end method

.method private final MediaBrowserCompat$MediaBrowserImplApi26()V
    .locals 2

    .line 264
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 266
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 267
    iget-object v0, v0, Lo/cH$onTransact;->zzam:Ljava/lang/String;

    .line 268
    iput-object v0, p0, Lo/cH$onTransact;->zzam:Ljava/lang/String;

    return-void
.end method

.method private final asBinder(I)V
    .locals 2

    .line 194
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 195
    iput p1, p0, Lo/cH$onTransact;->zzaa:I

    return-void
.end method

.method private final asBinder(J)V
    .locals 2

    .line 189
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 190
    iput-wide p1, p0, Lo/cH$onTransact;->zzz:J

    return-void
.end method

.method private final asBinder(Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 145
    iput-object p1, p0, Lo/cH$onTransact;->zzt:Ljava/lang/String;

    return-void
.end method

.method static synthetic asBinder(Lo/cH$onTransact;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21$2()V

    return-void
.end method

.method static synthetic asBinder(Lo/cH$onTransact;J)V
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->asBinder(J)V

    return-void
.end method

.method static synthetic asBinder(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lo/cH$onTransact;->asBinder(Ljava/lang/String;)V

    return-void
.end method

.method private final asInterface(I)V
    .locals 2

    .line 235
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 236
    iput p1, p0, Lo/cH$onTransact;->zzag:I

    return-void
.end method

.method private final asInterface(J)V
    .locals 1

    .line 149
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 150
    iput-wide p1, p0, Lo/cH$onTransact;->zzu:J

    return-void
.end method

.method private final asInterface(Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 179
    iput-object p1, p0, Lo/cH$onTransact;->zzy:Ljava/lang/String;

    return-void
.end method

.method static synthetic asInterface(Lo/cH$onTransact;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/cH$onTransact;->run()V

    return-void
.end method

.method static synthetic asInterface(Lo/cH$onTransact;J)V
    .locals 0

    .line 382
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(J)V

    return-void
.end method

.method static synthetic asInterface(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    return-void
.end method

.method private final extraCallback(I)V
    .locals 1

    .line 27
    iget p1, p0, Lo/cH$onTransact;->zzc:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lo/cH$onTransact;->zzc:I

    .line 28
    iput v0, p0, Lo/cH$onTransact;->zze:I

    return-void
.end method

.method private final extraCallback(ILo/cH$ICustomTabsCallback;)V
    .locals 1

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImpl()V

    .line 40
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-interface {v0, p1, p2}, Lo/ay$1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final extraCallback(J)V
    .locals 1

    .line 78
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 79
    iput-wide p1, p0, Lo/cH$onTransact;->zzh:J

    return-void
.end method

.method private final extraCallback(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    .line 221
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    .line 224
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 115
    iput-object p1, p0, Lo/cH$onTransact;->zzn:Ljava/lang/String;

    return-void
.end method

.method private final extraCallback(Lo/cH$newSession;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$ItemReceiver()V

    .line 68
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21()V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;I)V
    .locals 0

    const/4 p1, 0x1

    .line 336
    invoke-direct {p0, p1}, Lo/cH$onTransact;->extraCallback(I)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;J)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->extraCallback(J)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;Ljava/lang/Iterable;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;Lo/cH$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$ICustomTabsCallback$Stub;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/cH$onTransact;Lo/cH$ICustomTabsCallback;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$ICustomTabsCallback;)V

    return-void
.end method

.method private final extraCallback(Z)V
    .locals 2

    .line 170
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 171
    iput-boolean p1, p0, Lo/cH$onTransact;->zzx:Z

    return-void
.end method

.method private final getInterfaceDescriptor(Ljava/lang/String;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 241
    iput-object p1, p0, Lo/cH$onTransact;->zzaj:Ljava/lang/String;

    return-void
.end method

.method static synthetic getInterfaceDescriptor(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 383
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic mayLaunchUrl(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lo/cH$onTransact;->updateVisuals(Ljava/lang/String;)V

    return-void
.end method

.method private final newSession(J)V
    .locals 1

    .line 301
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 302
    iput-wide p1, p0, Lo/cH$onTransact;->zzat:J

    return-void
.end method

.method private final newSession(Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 278
    iput-object p1, p0, Lo/cH$onTransact;->zzap:Ljava/lang/String;

    return-void
.end method

.method static synthetic newSession(Lo/cH$onTransact;J)V
    .locals 0

    .line 390
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->newSession(J)V

    return-void
.end method

.method static synthetic newSession(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lo/cH$onTransact;->getInterfaceDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onConnected()Lo/cH$onTransact;
    .locals 1

    .line 335
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    return-object v0
.end method

.method private final onLoadChildren()V
    .locals 2

    .line 104
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lo/cH$onTransact;->zzl:J

    return-void
.end method

.method private final onMessageChannelReady(J)V
    .locals 1

    .line 93
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 94
    iput-wide p1, p0, Lo/cH$onTransact;->zzk:J

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImpl()V

    .line 47
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 135
    iput-object p1, p0, Lo/cH$onTransact;->zzr:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lo/cH$onTransact;->onServiceConnected()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;I)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lo/cH$onTransact;->asBinder(I)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;ILo/cH$ICustomTabsCallback;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->extraCallback(ILo/cH$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;J)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->onMessageChannelReady(J)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;Ljava/lang/Iterable;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lo/cH$onTransact;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$onTransact;Z)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lo/cH$onTransact;->extraCallback(Z)V

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 101
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 102
    iput-wide p1, p0, Lo/cH$onTransact;->zzl:J

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 125
    iput-object p1, p0, Lo/cH$onTransact;->zzp:Ljava/lang/String;

    return-void
.end method

.method private final onNavigationEvent(Lo/cH$ICustomTabsCallback;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImpl()V

    .line 44
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lo/cH$onTransact;->onLoadChildren()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;I)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(I)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;ILo/cH$newSession;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback(ILo/cH$newSession;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;J)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->onPostMessage(J)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$onTransact;Z)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onPostMessage(Z)V

    return-void
.end method

.method private final onPostMessage(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImpl()V

    .line 52
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final onPostMessage(J)V
    .locals 1

    .line 83
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 84
    iput-wide p1, p0, Lo/cH$onTransact;->zzi:J

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$newSession;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$ItemReceiver()V

    .line 71
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-static {p1, v0}, Lo/ab$a;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 110
    iput-object p1, p0, Lo/cH$onTransact;->zzm:Ljava/lang/String;

    return-void
.end method

.method private final onPostMessage(Lo/cH$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    iput-object p1, p0, Lo/cH$onTransact;->zzaq:Lo/cH$ICustomTabsCallback$Stub;

    .line 282
    iget p1, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/cH$onTransact;->zzd:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21$4()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;I)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onRelationshipValidationResult(I)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;J)V
    .locals 0

    .line 348
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;Ljava/lang/Iterable;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lo/cH$onTransact;->extraCallback(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/cH$onTransact;Lo/cH$newSession;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lo/cH$onTransact;->extraCallback(Lo/cH$newSession;)V

    return-void
.end method

.method private final onPostMessage(Z)V
    .locals 2

    .line 215
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 216
    iput-boolean p1, p0, Lo/cH$onTransact;->zzad:Z

    return-void
.end method

.method private final onRelationshipValidationResult(I)V
    .locals 1

    .line 129
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 130
    iput p1, p0, Lo/cH$onTransact;->zzq:I

    return-void
.end method

.method private final onRelationshipValidationResult(J)V
    .locals 2

    .line 154
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 155
    iput-wide p1, p0, Lo/cH$onTransact;->zzv:J

    return-void
.end method

.method private final onRelationshipValidationResult(Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 160
    iput-object p1, p0, Lo/cH$onTransact;->zzw:Ljava/lang/String;

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/cH$onTransact;)V
    .locals 0

    .line 380
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi21$5()V

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/cH$onTransact;I)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onTransact(I)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/cH$onTransact;J)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->asInterface(J)V

    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lo/cH$onTransact;->onRelationshipValidationResult(Ljava/lang/String;)V

    return-void
.end method

.method private final onServiceConnected()V
    .locals 1

    .line 49
    invoke-static {}, Lo/cH$onTransact;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    return-void
.end method

.method private final onTransact(I)V
    .locals 1

    .line 272
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 273
    iput p1, p0, Lo/cH$onTransact;->zzao:I

    return-void
.end method

.method private final onTransact(J)V
    .locals 2

    .line 251
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 252
    iput-wide p1, p0, Lo/cH$onTransact;->zzak:J

    return-void
.end method

.method private final onTransact(Ljava/lang/String;)V
    .locals 2

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 200
    iput-object p1, p0, Lo/cH$onTransact;->zzab:Ljava/lang/String;

    return-void
.end method

.method static synthetic onTransact(Lo/cH$onTransact;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Lo/cH$onTransact;->MediaBrowserCompat$MediaBrowserImplApi26()V

    return-void
.end method

.method static synthetic onTransact(Lo/cH$onTransact;J)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Lo/cH$onTransact;->onTransact(J)V

    return-void
.end method

.method static synthetic onTransact(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lo/cH$onTransact;->asInterface(Ljava/lang/String;)V

    return-void
.end method

.method private final postMessage(Ljava/lang/String;)V
    .locals 1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 307
    iput-object p1, p0, Lo/cH$onTransact;->zzau:Ljava/lang/String;

    return-void
.end method

.method static synthetic postMessage(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lo/cH$onTransact;->postMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final run()V
    .locals 2

    .line 181
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 183
    sget-object v0, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    .line 184
    iget-object v0, v0, Lo/cH$onTransact;->zzy:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lo/cH$onTransact;->zzy:Ljava/lang/String;

    return-void
.end method

.method private final updateVisuals(Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lo/cH$onTransact;->zzd:I

    .line 313
    iput-object p1, p0, Lo/cH$onTransact;->zzav:Ljava/lang/String;

    return-void
.end method

.method private final warmup(Ljava/lang/String;)V
    .locals 2

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lo/cH$onTransact;->zzc:I

    .line 231
    iput-object p1, p0, Lo/cH$onTransact;->zzaf:Ljava/lang/String;

    return-void
.end method

.method static synthetic warmup(Lo/cH$onTransact;Ljava/lang/String;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lo/cH$onTransact;->newSession(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final AudioAttributesCompatParcelizer()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lo/cH$onTransact;->zzz:J

    return-wide v0
.end method

.method public final AudioAttributesImplApi21Parcelizer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$extraCallback;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lo/cH$onTransact;->zzae:Lo/ay$1;

    return-object v0
.end method

.method public final AudioAttributesImplBaseParcelizer()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lo/cH$onTransact;->zzad:Z

    return v0
.end method

.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 316
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 334
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 332
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 323
    :pswitch_2
    sget-object p1, Lo/cH$onTransact;->zzax:Lo/en;

    if-nez p1, :cond_1

    .line 325
    const-class p2, Lo/cH$onTransact;

    monitor-enter p2

    .line 326
    :try_start_0
    sget-object p1, Lo/cH$onTransact;->zzax:Lo/en;

    if-nez p1, :cond_0

    .line 328
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 329
    sput-object p1, Lo/cH$onTransact;->zzax:Lo/en;

    .line 330
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 322
    :pswitch_3
    sget-object p1, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    return-object p1

    :pswitch_4
    const/16 p1, 0x31

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 319
    const-class p3, Lo/cH$ICustomTabsCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lo/cH$newSession;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzaa"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzab"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzac"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzad"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzae"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-class p3, Lo/cH$extraCallback;

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzaf"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzag"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzah"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzai"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzaj"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzak"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzal"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzam"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzan"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "zzao"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzap"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-string p3, "zzaq"

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzar"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzas"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    const-string p3, "zzat"

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzau"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-string p3, "zzav"

    aput-object p3, p1, p2

    .line 321
    sget-object p2, Lo/cH$onTransact;->zzaw:Lo/cH$onTransact;

    const-string p3, "\u0001,\u0000\u0002\u00014,\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1002\u0001\u0005\u1002\u0002\u0006\u1002\u0003\u0007\u1002\u0005\u0008\u1008\u0006\t\u1008\u0007\n\u1008\u0008\u000b\u1008\t\u000c\u1004\n\r\u1008\u000b\u000e\u1008\u000c\u0010\u1008\r\u0011\u1002\u000e\u0012\u1002\u000f\u0013\u1008\u0010\u0014\u1007\u0011\u0015\u1008\u0012\u0016\u1002\u0013\u0017\u1004\u0014\u0018\u1008\u0015\u0019\u1008\u0016\u001a\u1002\u0004\u001c\u1007\u0017\u001d\u001b\u001e\u1008\u0018\u001f\u1004\u0019 \u1004\u001a!\u1004\u001b\"\u1008\u001c#\u1002\u001d$\u1002\u001e%\u1008\u001f&\u1008 \'\u1004!)\u1008\",\u1009#-\u001d.\u1002$/\u1002%2\u1008&4\u1008\'"

    invoke-static {p2, p3, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_5
    new-instance p1, Lo/cH$onTransact$extraCallback;

    invoke-direct {p1, p2}, Lo/cH$onTransact$extraCallback;-><init>(Lo/cI;)V

    return-object p1

    .line 317
    :pswitch_6
    new-instance p1, Lo/cH$onTransact;

    invoke-direct {p1}, Lo/cH$onTransact;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$newSession;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1

    .line 55
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Z
    .locals 1

    .line 91
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsService()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lo/cH$onTransact;->zzk:J

    return-wide v0
.end method

.method public final ICustomTabsService$Stub()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/cH$onTransact;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService$Stub$Proxy()Z
    .locals 1

    .line 127
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final INotificationSideChannel()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lo/cH$onTransact;->zzu:J

    return-wide v0
.end method

.method public final INotificationSideChannel$Default()Z
    .locals 2

    .line 187
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final INotificationSideChannel$Stub()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/cH$onTransact;->zzw:Ljava/lang/String;

    return-object v0
.end method

.method public final INotificationSideChannel$Stub$Proxy()Z
    .locals 2

    .line 168
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/cH$onTransact;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final IPostMessageService$Stub()I
    .locals 1

    .line 128
    iget v0, p0, Lo/cH$onTransact;->zzq:I

    return v0
.end method

.method public final IPostMessageService$Stub$Proxy()Z
    .locals 1

    .line 147
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final IconCompatParcelizer()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lo/cH$onTransact;->zzab:Ljava/lang/String;

    return-object v0
.end method

.method public final MediaBrowserCompat()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lo/cH$onTransact;->zzaf:Ljava/lang/String;

    return-object v0
.end method

.method public final MediaBrowserCompat$CallbackHandler()Z
    .locals 1

    .line 296
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final MediaBrowserCompat$ConnectionCallback()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lo/cH$onTransact;->zzau:Ljava/lang/String;

    return-object v0
.end method

.method public final RemoteActionCompatParcelizer()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/cH$onTransact;->zzac:Ljava/lang/String;

    return-object v0
.end method

.method public final asBinder()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lo/cH$onTransact;->zzh:J

    return-wide v0
.end method

.method public final asInterface()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lo/cH$onTransact;->zzi:J

    return-wide v0
.end method

.method public final cancel()Z
    .locals 2

    .line 152
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cancelAll()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lo/cH$onTransact;->zzv:J

    return-wide v0
.end method

.method public final connect()Z
    .locals 2

    .line 233
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()Z
    .locals 2

    .line 213
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 26
    iget v0, p0, Lo/cH$onTransact;->zze:I

    return v0
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/cH$onTransact;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultImpl()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lo/cH$onTransact;->zzx:Z

    return v0
.end method

.method public final getExtras()Z
    .locals 2

    .line 249
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getInterfaceDescriptor()Z
    .locals 1

    .line 86
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem()I
    .locals 1

    .line 271
    iget v0, p0, Lo/cH$onTransact;->zzao:I

    return v0
.end method

.method public final getNotifyChildrenChangedOptions()Z
    .locals 1

    .line 309
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRoot()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lo/cH$onTransact;->zzak:J

    return-wide v0
.end method

.method public final getServiceComponent()I
    .locals 1

    .line 234
    iget v0, p0, Lo/cH$onTransact;->zzag:I

    return v0
.end method

.method public final getSessionToken()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lo/cH$onTransact;->zzaj:Ljava/lang/String;

    return-object v0
.end method

.method public final handleMessage()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lo/cH$onTransact;->zzav:Ljava/lang/String;

    return-object v0
.end method

.method public final isConnected()Z
    .locals 2

    .line 254
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final mayLaunchUrl()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/cH$onTransact;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final newSession()Z
    .locals 1

    .line 99
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 31
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$ICustomTabsCallback;

    return-object p1
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/cH$onTransact;->zzf:Lo/ay$1;

    return-object v0
.end method

.method public final onNavigationEvent(I)Lo/cH$newSession;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/cH$onTransact;->zzg:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$newSession;

    return-object p1
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 25
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 81
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 76
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final postMessage()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lo/cH$onTransact;->zzl:J

    return-wide v0
.end method

.method public final read()I
    .locals 1

    .line 193
    iget v0, p0, Lo/cH$onTransact;->zzaa:I

    return v0
.end method

.method public final requestPostMessageChannel()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/cH$onTransact;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final search()Z
    .locals 1

    .line 270
    iget v0, p0, Lo/cH$onTransact;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final sendCustomAction()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/cH$onTransact;->zzam:Ljava/lang/String;

    return-object v0
.end method

.method public final setCallbacksMessenger()J
    .locals 2

    .line 297
    iget-wide v0, p0, Lo/cH$onTransact;->zzas:J

    return-wide v0
.end method

.method public final setDefaultImpl()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lo/cH$onTransact;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public final subscribe()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lo/cH$onTransact;->zzap:Ljava/lang/String;

    return-object v0
.end method

.method public final unsubscribe()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lo/cH$onTransact;->zzal:J

    return-wide v0
.end method

.method public final updateVisuals()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/cH$onTransact;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public final validateRelationship()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/cH$onTransact;->zzs:Ljava/lang/String;

    return-object v0
.end method

.method public final warmup()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lo/cH$onTransact;->zzj:J

    return-wide v0
.end method

.method public final write()Z
    .locals 2

    .line 192
    iget v0, p0, Lo/cH$onTransact;->zzc:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
