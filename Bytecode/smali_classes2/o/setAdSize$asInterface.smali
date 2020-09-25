.class public final Lo/setAdSize$asInterface;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$asInterface$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$asInterface;",
        "Lo/setAdSize$asInterface$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$asInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqq:Lo/setAdSize$asInterface;


# instance fields
.field private zzbm:I

.field private zzqk:F

.field private zzql:F

.field private zzqm:F

.field private zzqn:F

.field private zzqo:F

.field private zzqp:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lo/setAdSize$asInterface;

    invoke-direct {v0}, Lo/setAdSize$asInterface;-><init>()V

    .line 49
    sput-object v0, Lo/setAdSize$asInterface;->zzqq:Lo/setAdSize$asInterface;

    .line 50
    const-class v1, Lo/setAdSize$asInterface;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    return-void
.end method

.method static synthetic extraCallback()Lo/setAdSize$asInterface;
    .locals 1

    .line 41
    sget-object v0, Lo/setAdSize$asInterface;->zzqq:Lo/setAdSize$asInterface;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 38
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    sget-object p1, Lo/setAdSize$asInterface;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 31
    const-class p2, Lo/setAdSize$asInterface;

    monitor-enter p2

    .line 32
    :try_start_0
    sget-object p1, Lo/setAdSize$asInterface;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$asInterface;->zzqq:Lo/setAdSize$asInterface;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 35
    sput-object p1, Lo/setAdSize$asInterface;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 36
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

    .line 28
    :pswitch_3
    sget-object p1, Lo/setAdSize$asInterface;->zzqq:Lo/setAdSize$asInterface;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzqk"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzql"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzqm"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzqn"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzqo"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzqp"

    aput-object p3, p1, p2

    .line 27
    sget-object p2, Lo/setAdSize$asInterface;->zzqq:Lo/setAdSize$asInterface;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1001\u0005"

    invoke-static {p2, p3, p1}, Lo/setAdSize$asInterface;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lo/setAdSize$asInterface$extraCallback;

    invoke-direct {p1, p2}, Lo/setAdSize$asInterface$extraCallback;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lo/setAdSize$asInterface;

    invoke-direct {p1}, Lo/setAdSize$asInterface;-><init>()V

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
