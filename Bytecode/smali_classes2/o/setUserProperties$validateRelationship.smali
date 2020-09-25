.class public final Lo/setUserProperties$validateRelationship;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "validateRelationship"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUserProperties$validateRelationship$extraCallback;,
        Lo/setUserProperties$validateRelationship$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock<",
        "Lo/setUserProperties$validateRelationship;",
        "Lo/setUserProperties$validateRelationship$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/setUserProperties$validateRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbhj:Lo/setUserProperties$validateRelationship;


# instance fields
.field private zzbb:I

.field private zzzg:I

.field private zzzh:Ljava/lang/String;

.field private zzzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setUserProperties$validateRelationship;

    invoke-direct {v0}, Lo/setUserProperties$validateRelationship;-><init>()V

    sput-object v0, Lo/setUserProperties$validateRelationship;->zzbhj:Lo/setUserProperties$validateRelationship;

    const-class v1, Lo/setUserProperties$validateRelationship;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/setUserProperties$validateRelationship;->zzzh:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lo/setUserProperties$validateRelationship;->zzzg:I

    return-void
.end method

.method static synthetic extraCallback()Lo/setUserProperties$validateRelationship;
    .locals 1

    sget-object v0, Lo/setUserProperties$validateRelationship;->zzbhj:Lo/setUserProperties$validateRelationship;

    return-object v0
.end method


# virtual methods
.method protected final onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/setConversationBannerMessage;->onMessageChannelReady:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/setUserProperties$validateRelationship;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    const-class p2, Lo/setUserProperties$validateRelationship;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/setUserProperties$validateRelationship;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_0

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/setUserProperties$validateRelationship;->zzbhj:Lo/setUserProperties$validateRelationship;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/setUserProperties$validateRelationship;->zzbg:Lo/nativeToCircleFilter;

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

    :pswitch_3
    sget-object p1, Lo/setUserProperties$validateRelationship;->zzbhj:Lo/setUserProperties$validateRelationship;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzzh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzzm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-static {}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lo/setUserProperties$updateVisuals$onNavigationEvent;->extraCallback()Lo/setHierarchy;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lo/setUserProperties$validateRelationship;->zzbhj:Lo/setUserProperties$validateRelationship;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u000c\u0001\u0003\u000c\u0002"

    invoke-static {p2, p3, p1}, Lo/setUserProperties$validateRelationship;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/setUserProperties$validateRelationship$extraCallback;

    invoke-direct {p1, p2}, Lo/setUserProperties$validateRelationship$extraCallback;-><init>(Lo/setConversationBannerMessage;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/setUserProperties$validateRelationship;

    invoke-direct {p1}, Lo/setUserProperties$validateRelationship;-><init>()V

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
