.class public final Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;",
        "Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;


# instance fields
.field private zzbm:I

.field private zzrt:Lo/setAdSize$onNavigationEvent;

.field private zzru:Lo/setAdSize$getInterfaceDescriptor;

.field private zzrv:Lo/setAdSize$onTransact;

.field private zzrw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;-><init>()V

    .line 35
    sput-object v0, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    .line 36
    const-class v1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;
    .locals 1

    .line 31
    sget-object v0, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;
    .locals 1

    .line 11
    sget-object v0, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-virtual {v0}, Lo/isPlayServicesPossiblyUpdating;->asBinder()Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object v0

    check-cast v0, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 28
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 25
    sput-object p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 26
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

    .line 18
    :pswitch_3
    sget-object p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzrt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzru"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzrv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzrw"

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->zzrx:Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1004\u0003"

    invoke-static {p2, p3, p1}, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p1}, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;-><init>()V

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
