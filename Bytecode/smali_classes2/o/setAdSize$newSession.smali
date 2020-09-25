.class public final Lo/setAdSize$newSession;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "newSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$newSession$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$newSession;",
        "Lo/setAdSize$newSession$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$newSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzrn:Lo/setAdSize$newSession;


# instance fields
.field private zzbm:I

.field private zzrl:I

.field private zzrm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lo/setAdSize$newSession;

    invoke-direct {v0}, Lo/setAdSize$newSession;-><init>()V

    .line 33
    sput-object v0, Lo/setAdSize$newSession;->zzrn:Lo/setAdSize$newSession;

    .line 34
    const-class v1, Lo/setAdSize$newSession;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    return-void
.end method

.method static synthetic onPostMessage()Lo/setAdSize$newSession;
    .locals 1

    .line 29
    sget-object v0, Lo/setAdSize$newSession;->zzrn:Lo/setAdSize$newSession;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lo/setAdSize$newSession;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lo/setAdSize$newSession;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lo/setAdSize$newSession;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$newSession;->zzrn:Lo/setAdSize$newSession;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 23
    sput-object p1, Lo/setAdSize$newSession;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lo/setAdSize$newSession;->zzrn:Lo/setAdSize$newSession;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzrl"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzrm"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lo/setAdSize$newSession;->zzrn:Lo/setAdSize$newSession;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lo/setAdSize$newSession;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lo/setAdSize$newSession$onPostMessage;

    invoke-direct {p1, p2}, Lo/setAdSize$newSession$onPostMessage;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lo/setAdSize$newSession;

    invoke-direct {p1}, Lo/setAdSize$newSession;-><init>()V

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
