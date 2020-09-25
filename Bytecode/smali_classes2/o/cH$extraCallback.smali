.class public final Lo/cH$extraCallback;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$extraCallback$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$extraCallback;",
        "Lo/cH$extraCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzh:Lo/cH$extraCallback;

.field private static volatile zzi:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lo/cH$asBinder;

.field private zzf:Lo/cH$asBinder;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lo/cH$extraCallback;

    invoke-direct {v0}, Lo/cH$extraCallback;-><init>()V

    .line 50
    sput-object v0, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    .line 51
    const-class v1, Lo/cH$extraCallback;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    .line 5
    iget v0, p0, Lo/cH$extraCallback;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/cH$extraCallback;->zzc:I

    .line 6
    iput p1, p0, Lo/cH$extraCallback;->zzd:I

    return-void
.end method

.method private final ICustomTabsCallback(Lo/cH$asBinder;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lo/cH$extraCallback;->zze:Lo/cH$asBinder;

    .line 11
    iget p1, p0, Lo/cH$extraCallback;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/cH$extraCallback;->zzc:I

    return-void
.end method

.method public static ICustomTabsCallback$Stub()Lo/cH$extraCallback$onMessageChannelReady;
    .locals 1

    .line 24
    sget-object v0, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$extraCallback$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic asInterface()Lo/cH$extraCallback;
    .locals 1

    .line 44
    sget-object v0, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/cH$extraCallback;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/cH$extraCallback;->ICustomTabsCallback(I)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$extraCallback;Lo/cH$asBinder;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lo/cH$extraCallback;->ICustomTabsCallback(Lo/cH$asBinder;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/cH$extraCallback;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/cH$extraCallback;->onMessageChannelReady(Z)V

    return-void
.end method

.method private final onMessageChannelReady(Z)V
    .locals 1

    .line 21
    iget v0, p0, Lo/cH$extraCallback;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/cH$extraCallback;->zzc:I

    .line 22
    iput-boolean p1, p0, Lo/cH$extraCallback;->zzg:Z

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/cH$extraCallback;Lo/cH$asBinder;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lo/cH$extraCallback;->onPostMessage(Lo/cH$asBinder;)V

    return-void
.end method

.method private final onPostMessage(Lo/cH$asBinder;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lo/cH$extraCallback;->zzf:Lo/cH$asBinder;

    .line 17
    iget p1, p0, Lo/cH$extraCallback;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/cH$extraCallback;->zzc:I

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/cH$extraCallback;->zzi:Lo/en;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lo/cH$extraCallback;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lo/cH$extraCallback;->zzi:Lo/en;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 38
    sput-object p1, Lo/cH$extraCallback;->zzi:Lo/en;

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
    sget-object p1, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 30
    sget-object p2, Lo/cH$extraCallback;->zzh:Lo/cH$extraCallback;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-static {p2, p3, p1}, Lo/cH$extraCallback;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_5
    new-instance p1, Lo/cH$extraCallback$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/cH$extraCallback$onMessageChannelReady;-><init>(Lo/cI;)V

    return-object p1

    .line 26
    :pswitch_6
    new-instance p1, Lo/cH$extraCallback;

    invoke-direct {p1}, Lo/cH$extraCallback;-><init>()V

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

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 13
    iget v0, p0, Lo/cH$extraCallback;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 4
    iget v0, p0, Lo/cH$extraCallback;->zzd:I

    return v0
.end method

.method public final onMessageChannelReady()Lo/cH$asBinder;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/cH$extraCallback;->zze:Lo/cH$asBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cH$asBinder;->asBinder()Lo/cH$asBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 3
    iget v0, p0, Lo/cH$extraCallback;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/cH$asBinder;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/cH$extraCallback;->zzf:Lo/cH$asBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lo/cH$asBinder;->asBinder()Lo/cH$asBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/cH$extraCallback;->zzg:Z

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 19
    iget v0, p0, Lo/cH$extraCallback;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
