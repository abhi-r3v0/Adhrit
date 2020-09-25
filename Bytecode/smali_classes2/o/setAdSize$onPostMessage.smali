.class public final Lo/setAdSize$onPostMessage;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$onPostMessage$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$onPostMessage;",
        "Lo/setAdSize$onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzof:Lo/setAdSize$onPostMessage;


# instance fields
.field private zzbm:I

.field private zzod:Ljava/lang/String;

.field private zzoe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/setAdSize$onPostMessage;

    invoke-direct {v0}, Lo/setAdSize$onPostMessage;-><init>()V

    .line 37
    sput-object v0, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    .line 38
    const-class v1, Lo/setAdSize$onPostMessage;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/setAdSize$onPostMessage;->zzod:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/setAdSize$onPostMessage;->zzoe:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget v0, p0, Lo/setAdSize$onPostMessage;->zzbm:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/setAdSize$onPostMessage;->zzbm:I

    .line 11
    iput-object p1, p0, Lo/setAdSize$onPostMessage;->zzoe:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setAdSize$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/setAdSize$onPostMessage;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lo/setAdSize$onPostMessage;->zzbm:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/setAdSize$onPostMessage;->zzbm:I

    .line 7
    iput-object p1, p0, Lo/setAdSize$onPostMessage;->zzod:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady()Lo/setAdSize$onPostMessage$extraCallback;
    .locals 1

    .line 13
    sget-object v0, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    invoke-virtual {v0}, Lo/isPlayServicesPossiblyUpdating;->asBinder()Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object v0

    check-cast v0, Lo/setAdSize$onPostMessage$extraCallback;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/setAdSize$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/setAdSize$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage()Lo/setAdSize$onPostMessage;
    .locals 1

    .line 33
    sget-object v0, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 30
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lo/setAdSize$onPostMessage;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 23
    const-class p2, Lo/setAdSize$onPostMessage;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lo/setAdSize$onPostMessage;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 27
    sput-object p1, Lo/setAdSize$onPostMessage;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 28
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

    .line 20
    :pswitch_3
    sget-object p1, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbm"

    aput-object v0, p1, p2

    const-string p2, "zzod"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzoe"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lo/setAdSize$onPostMessage;->zzof:Lo/setAdSize$onPostMessage;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-static {p2, p3, p1}, Lo/setAdSize$onPostMessage;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lo/setAdSize$onPostMessage$extraCallback;

    invoke-direct {p1, p2}, Lo/setAdSize$onPostMessage$extraCallback;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lo/setAdSize$onPostMessage;

    invoke-direct {p1}, Lo/setAdSize$onPostMessage;-><init>()V

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
