.class public final Lo/setAdSize$extraCallback;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$extraCallback$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$extraCallback;",
        "Lo/setAdSize$extraCallback$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzoo:Lo/setAdSize$extraCallback;


# instance fields
.field private zzon:Lo/UserRecoverableException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserRecoverableException<",
            "Lo/setAdSize$newSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/setAdSize$extraCallback;

    invoke-direct {v0}, Lo/setAdSize$extraCallback;-><init>()V

    .line 35
    sput-object v0, Lo/setAdSize$extraCallback;->zzoo:Lo/setAdSize$extraCallback;

    .line 36
    const-class v1, Lo/setAdSize$extraCallback;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    .line 2
    invoke-static {}, Lo/setAdSize$extraCallback;->ICustomTabsCallback$Stub$Proxy()Lo/UserRecoverableException;

    move-result-object v0

    iput-object v0, p0, Lo/setAdSize$extraCallback;->zzon:Lo/UserRecoverableException;

    return-void
.end method

.method static synthetic onPostMessage()Lo/setAdSize$extraCallback;
    .locals 1

    .line 32
    sget-object v0, Lo/setAdSize$extraCallback;->zzoo:Lo/setAdSize$extraCallback;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lo/setAdSize$extraCallback;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lo/setAdSize$extraCallback;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lo/setAdSize$extraCallback;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$extraCallback;->zzoo:Lo/setAdSize$extraCallback;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 26
    sput-object p1, Lo/setAdSize$extraCallback;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lo/setAdSize$extraCallback;->zzoo:Lo/setAdSize$extraCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzon"

    aput-object v0, p1, p2

    .line 16
    const-class p2, Lo/setAdSize$newSession;

    aput-object p2, p1, p3

    .line 18
    sget-object p2, Lo/setAdSize$extraCallback;->zzoo:Lo/setAdSize$extraCallback;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lo/setAdSize$extraCallback;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lo/setAdSize$extraCallback$onPostMessage;

    invoke-direct {p1, p2}, Lo/setAdSize$extraCallback$onPostMessage;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo/setAdSize$extraCallback;

    invoke-direct {p1}, Lo/setAdSize$extraCallback;-><init>()V

    return-object p1

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
