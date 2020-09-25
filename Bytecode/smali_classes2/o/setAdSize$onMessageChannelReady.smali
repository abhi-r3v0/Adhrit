.class public final Lo/setAdSize$onMessageChannelReady;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAdSize$onMessageChannelReady$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating<",
        "Lo/setAdSize$onMessageChannelReady;",
        "Lo/setAdSize$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbk:Lo/checkAvailabilityAndConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/checkAvailabilityAndConnect<",
            "Lo/setAdSize$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzoh:Lo/getImpliedScopes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getImpliedScopes<",
            "Ljava/lang/Integer;",
            "Lo/setHeadlineView;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzoi:Lo/setAdSize$onMessageChannelReady;


# instance fields
.field private zzog:Lo/KeepName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/setVideoOptions;

    invoke-direct {v0}, Lo/setVideoOptions;-><init>()V

    sput-object v0, Lo/setAdSize$onMessageChannelReady;->zzoh:Lo/getImpliedScopes;

    .line 26
    new-instance v0, Lo/setAdSize$onMessageChannelReady;

    invoke-direct {v0}, Lo/setAdSize$onMessageChannelReady;-><init>()V

    .line 27
    sput-object v0, Lo/setAdSize$onMessageChannelReady;->zzoi:Lo/setAdSize$onMessageChannelReady;

    .line 28
    const-class v1, Lo/setAdSize$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    .line 2
    invoke-static {}, Lo/setAdSize$onMessageChannelReady;->ICustomTabsService()Lo/KeepName;

    move-result-object v0

    iput-object v0, p0, Lo/setAdSize$onMessageChannelReady;->zzog:Lo/KeepName;

    return-void
.end method

.method static synthetic extraCallback()Lo/setAdSize$onMessageChannelReady;
    .locals 1

    .line 24
    sget-object v0, Lo/setAdSize$onMessageChannelReady;->zzoi:Lo/setAdSize$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method protected final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lo/EGLSurfaceTexture$GlException;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lo/setAdSize$onMessageChannelReady;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lo/setAdSize$onMessageChannelReady;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lo/setAdSize$onMessageChannelReady;->zzbk:Lo/checkAvailabilityAndConnect;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;

    sget-object p3, Lo/setAdSize$onMessageChannelReady;->zzoi:Lo/setAdSize$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    .line 18
    sput-object p1, Lo/setAdSize$onMessageChannelReady;->zzbk:Lo/checkAvailabilityAndConnect;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lo/setAdSize$onMessageChannelReady;->zzoi:Lo/setAdSize$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzog"

    aput-object v0, p1, p2

    .line 8
    invoke-static {}, Lo/setHeadlineView;->onPostMessage()Lo/buildClient;

    move-result-object p2

    aput-object p2, p1, p3

    .line 10
    sget-object p2, Lo/setAdSize$onMessageChannelReady;->zzoi:Lo/setAdSize$onMessageChannelReady;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    invoke-static {p2, p3, p1}, Lo/setAdSize$onMessageChannelReady;->onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lo/setAdSize$onMessageChannelReady$onPostMessage;

    invoke-direct {p1, p2}, Lo/setAdSize$onMessageChannelReady$onPostMessage;-><init>(Lo/EGLSurfaceTexture$GlException;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lo/setAdSize$onMessageChannelReady;

    invoke-direct {p1}, Lo/setAdSize$onMessageChannelReady;-><init>()V

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
