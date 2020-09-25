.class public final Lo/setAdSize$onRelationshipValidationResult;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$onRelationshipValidationResult$onPostMessage;,
        Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$onRelationshipValidationResult;",
        "Lo/setAdSize$onRelationshipValidationResult$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpl:Lo/setAdSize$onRelationshipValidationResult;


# instance fields
.field private zzbm:I

.field private zzpd:Ljava/lang/String;

.field private zzpe:Ljava/lang/String;

.field private zzpf:Lo/UserRecoverableException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserRecoverableException<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzpg:I

.field private zzph:Ljava/lang/String;

.field private zzpi:J

.field private zzpj:J

.field private zzpk:Lo/UserRecoverableException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserRecoverableException<",
            "Lo/setAdSize$warmup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lo/setAdSize$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setAdSize$onRelationshipValidationResult;-><init>()V

    .line 52
    sput-object v0, Lo/setAdSize$onRelationshipValidationResult;->zzpl:Lo/setAdSize$onRelationshipValidationResult;

    .line 53
    const-class v1, Lo/setAdSize$onRelationshipValidationResult;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/setAdSize$onRelationshipValidationResult;->zzpd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/setAdSize$onRelationshipValidationResult;->zzpe:Ljava/lang/String;

    .line 4
    invoke-static {}, Lo/isPlayServicesPossiblyUpdating;->ICustomTabsCallback$Stub$Proxy()Lo/UserRecoverableException;

    move-result-object v1

    iput-object v1, p0, Lo/setAdSize$onRelationshipValidationResult;->zzpf:Lo/UserRecoverableException;

    .line 5
    iput-object v0, p0, Lo/setAdSize$onRelationshipValidationResult;->zzph:Ljava/lang/String;

    .line 6
    invoke-static {}, Lo/setAdSize$onRelationshipValidationResult;->ICustomTabsCallback$Stub$Proxy()Lo/UserRecoverableException;

    move-result-object v0

    iput-object v0, p0, Lo/setAdSize$onRelationshipValidationResult;->zzpk:Lo/UserRecoverableException;

    return-void
.end method

.method static synthetic onNavigationEvent()Lo/setAdSize$onRelationshipValidationResult;
    .locals 1

    .line 46
    sget-object v0, Lo/setAdSize$onRelationshipValidationResult;->zzpl:Lo/setAdSize$onRelationshipValidationResult;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 43
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_2
    sget-object p1, Lo/setAdSize$onRelationshipValidationResult;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 36
    const-class p2, Lo/setAdSize$onRelationshipValidationResult;

    monitor-enter p2

    .line 37
    :try_start_0
    sget-object p1, Lo/setAdSize$onRelationshipValidationResult;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$onRelationshipValidationResult;->zzpl:Lo/setAdSize$onRelationshipValidationResult;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 40
    sput-object p1, Lo/setAdSize$onRelationshipValidationResult;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 41
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

    .line 33
    :pswitch_3
    sget-object p1, Lo/setAdSize$onRelationshipValidationResult;->zzpl:Lo/setAdSize$onRelationshipValidationResult;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzpd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzpe"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzpf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzpg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 30
    invoke-static {}, Lo/setAdSize$onRelationshipValidationResult$onMessageChannelReady;->ICustomTabsCallback()Lo/buildClient;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzph"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzpi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzpj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzpk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lo/setAdSize$warmup;

    aput-object p3, p1, p2

    .line 32
    sget-object p2, Lo/setAdSize$onRelationshipValidationResult;->zzpl:Lo/setAdSize$onRelationshipValidationResult;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a\u0004\u100c\u0002\u0005\u1008\u0003\u0006\u1002\u0004\u0007\u1002\u0005\u0008\u001b"

    invoke-static {p2, p3, p1}, Lo/setAdSize$onRelationshipValidationResult;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_5
    new-instance p1, Lo/setAdSize$onRelationshipValidationResult$onPostMessage;

    invoke-direct {p1, p2}, Lo/setAdSize$onRelationshipValidationResult$onPostMessage;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 27
    :pswitch_6
    new-instance p1, Lo/setAdSize$onRelationshipValidationResult;

    invoke-direct {p1}, Lo/setAdSize$onRelationshipValidationResult;-><init>()V

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
