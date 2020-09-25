.class public final Lo/DefaultCsatConfig$onMessageChannelReady;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCsatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus<",
        "Lo/DefaultCsatConfig$onMessageChannelReady;",
        "Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

.field private static volatile zzo:Lo/uploadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lo/setClicked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setClicked<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:Lo/setClicked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setClicked<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lo/DefaultCsatConfig$onMessageChannelReady;

    invoke-direct {v0}, Lo/DefaultCsatConfig$onMessageChannelReady;-><init>()V

    .line 45
    sput-object v0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    .line 46
    const-class v1, Lo/DefaultCsatConfig$onMessageChannelReady;

    invoke-static {v1, v0}, Lo/MarketingMessageStatus;->onNavigationEvent(Ljava/lang/Class;Lo/MarketingMessageStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzm:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zze:Ljava/lang/String;

    .line 5
    invoke-static {}, Lo/MarketingMessageStatus;->extraCallback()Lo/setClicked;

    move-result-object v1

    iput-object v1, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzf:Lo/setClicked;

    .line 6
    iput-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzh:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzk:Ljava/lang/String;

    .line 8
    invoke-static {}, Lo/MarketingMessageStatus;->extraCallback()Lo/setClicked;

    move-result-object v0

    iput-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzl:Lo/setClicked;

    return-void
.end method

.method public static extraCommand()Lo/uploadState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    .line 39
    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->onTransact:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v2}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lo/uploadState;

    return-object v0
.end method

.method static synthetic updateVisuals()Lo/DefaultCsatConfig$onMessageChannelReady;
    .locals 1

    .line 43
    sget-object v0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub$Proxy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzl:Lo/setClicked;

    return-object v0
.end method

.method public final ICustomTabsService()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzg:Z

    return v0
.end method

.method public final asBinder()I
    .locals 1

    .line 12
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzf:Lo/setClicked;

    invoke-interface {v0}, Lo/setClicked;->size()I

    move-result v0

    return v0
.end method

.method public final asInterface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzf:Lo/setClicked;

    return-object v0
.end method

.method protected final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    sget-object p3, Lo/setCsatExpiryInterval;->onPostMessage:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 35
    iput-byte p1, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzm:B

    return-object v1

    .line 34
    :pswitch_1
    iget-byte p1, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzm:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lo/DefaultCsatConfig$onMessageChannelReady;->zzo:Lo/uploadState;

    if-nez p1, :cond_2

    .line 27
    const-class p2, Lo/DefaultCsatConfig$onMessageChannelReady;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lo/DefaultCsatConfig$onMessageChannelReady;->zzo:Lo/uploadState;

    if-nez p1, :cond_1

    .line 30
    new-instance p1, Lo/MarketingMessageStatus$onPostMessage;

    sget-object p3, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/MarketingMessageStatus$onPostMessage;-><init>(Lo/MarketingMessageStatus;)V

    .line 31
    sput-object p1, Lo/DefaultCsatConfig$onMessageChannelReady;->zzo:Lo/uploadState;

    .line 32
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 24
    :pswitch_3
    sget-object p1, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    .line 23
    sget-object p2, Lo/DefaultCsatConfig$onMessageChannelReady;->zzn:Lo/DefaultCsatConfig$onMessageChannelReady;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u001a\u0004\u1007\u0002\u0005\u1008\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1008\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->ICustomTabsCallback(Lo/access$502;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;

    invoke-direct {p1, v1}, Lo/DefaultCsatConfig$onMessageChannelReady$onPostMessage;-><init>(Lo/setCsatExpiryInterval;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lo/DefaultCsatConfig$onMessageChannelReady;

    invoke-direct {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;-><init>()V

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

.method public final getInterfaceDescriptor()I
    .locals 1

    .line 17
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzl:Lo/setClicked;

    invoke-interface {v0}, Lo/setClicked;->size()I

    move-result v0

    return v0
.end method

.method public final newSession()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzi:Z

    return v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/DefaultCsatConfig$onMessageChannelReady;->zzh:Ljava/lang/String;

    return-object v0
.end method
