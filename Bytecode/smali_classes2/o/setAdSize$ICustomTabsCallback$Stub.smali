.class public final Lo/setAdSize$ICustomTabsCallback$Stub;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$ICustomTabsCallback$Stub$onMessageChannelReady;,
        Lo/setAdSize$ICustomTabsCallback$Stub$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$ICustomTabsCallback$Stub;",
        "Lo/setAdSize$ICustomTabsCallback$Stub$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;


# instance fields
.field private zzbm:I

.field private zzoj:I

.field private zzqv:J

.field private zzqw:J

.field private zzqx:J

.field private zzqy:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lo/setAdSize$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/setAdSize$ICustomTabsCallback$Stub;-><init>()V

    .line 42
    sput-object v0, Lo/setAdSize$ICustomTabsCallback$Stub;->zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;

    .line 43
    const-class v1, Lo/setAdSize$ICustomTabsCallback$Stub;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    return-void
.end method

.method static synthetic onNavigationEvent()Lo/setAdSize$ICustomTabsCallback$Stub;
    .locals 1

    .line 36
    sget-object v0, Lo/setAdSize$ICustomTabsCallback$Stub;->zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lo/setAdSize$ICustomTabsCallback$Stub;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$ICustomTabsCallback$Stub;->zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 30
    sput-object p1, Lo/setAdSize$ICustomTabsCallback$Stub;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub;->zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzoj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 20
    invoke-static {}, Lo/setAdSize$ICustomTabsCallback$Stub$ICustomTabsCallback;->onNavigationEvent()Lo/buildClient;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzqv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzqw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzqy"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzqx"

    aput-object p3, p1, p2

    .line 22
    sget-object p2, Lo/setAdSize$ICustomTabsCallback$Stub;->zzqz:Lo/setAdSize$ICustomTabsCallback$Stub;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0004\u0005\u1002\u0003"

    invoke-static {p2, p3, p1}, Lo/setAdSize$ICustomTabsCallback$Stub;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lo/setAdSize$ICustomTabsCallback$Stub$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/setAdSize$ICustomTabsCallback$Stub$onMessageChannelReady;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lo/setAdSize$ICustomTabsCallback$Stub;

    invoke-direct {p1}, Lo/setAdSize$ICustomTabsCallback$Stub;-><init>()V

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
