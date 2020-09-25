.class public final Lo/setAdSize$getInterfaceDescriptor;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getInterfaceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$getInterfaceDescriptor$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$getInterfaceDescriptor;",
        "Lo/setAdSize$getInterfaceDescriptor$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$getInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzrj:Lo/setAdSize$getInterfaceDescriptor;


# instance fields
.field private zzbm:I

.field private zzov:Ljava/lang/String;

.field private zzpd:Ljava/lang/String;

.field private zzrf:J

.field private zzrg:Lo/setAdSize$onPostMessage;

.field private zzrh:Lo/setAdSize$asBinder;

.field private zzri:Lo/setAdSize$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lo/setAdSize$getInterfaceDescriptor;

    invoke-direct {v0}, Lo/setAdSize$getInterfaceDescriptor;-><init>()V

    .line 51
    sput-object v0, Lo/setAdSize$getInterfaceDescriptor;->zzrj:Lo/setAdSize$getInterfaceDescriptor;

    .line 52
    const-class v1, Lo/setAdSize$getInterfaceDescriptor;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/setAdSize$getInterfaceDescriptor;->zzpd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/setAdSize$getInterfaceDescriptor;->zzov:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/setAdSize$getInterfaceDescriptor;
    .locals 1

    .line 44
    sget-object v0, Lo/setAdSize$getInterfaceDescriptor;->zzrj:Lo/setAdSize$getInterfaceDescriptor;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lo/setAdSize$getInterfaceDescriptor;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lo/setAdSize$getInterfaceDescriptor;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lo/setAdSize$getInterfaceDescriptor;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$getInterfaceDescriptor;->zzrj:Lo/setAdSize$getInterfaceDescriptor;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 38
    sput-object p1, Lo/setAdSize$getInterfaceDescriptor;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p1, Lo/setAdSize$getInterfaceDescriptor;->zzrj:Lo/setAdSize$getInterfaceDescriptor;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzpd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzrf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzrg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzov"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzrh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzri"

    aput-object p3, p1, p2

    .line 30
    sget-object p2, Lo/setAdSize$getInterfaceDescriptor;->zzrj:Lo/setAdSize$getInterfaceDescriptor;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1009\u0002\u0006\u1008\u0003\u0010\u1009\u0004\u0011\u1009\u0005"

    invoke-static {p2, p3, p1}, Lo/setAdSize$getInterfaceDescriptor;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_5
    new-instance p1, Lo/setAdSize$getInterfaceDescriptor$onPostMessage;

    invoke-direct {p1, p2}, Lo/setAdSize$getInterfaceDescriptor$onPostMessage;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 26
    :pswitch_6
    new-instance p1, Lo/setAdSize$getInterfaceDescriptor;

    invoke-direct {p1}, Lo/setAdSize$getInterfaceDescriptor;-><init>()V

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
