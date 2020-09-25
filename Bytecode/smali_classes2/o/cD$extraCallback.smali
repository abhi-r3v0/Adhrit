.class public final Lo/cD$extraCallback;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cD$extraCallback$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cD$extraCallback;",
        "Lo/cD$extraCallback$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzf:Lo/cD$extraCallback;

.field private static volatile zzg:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cD$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lo/cD$extraCallback;

    invoke-direct {v0}, Lo/cD$extraCallback;-><init>()V

    .line 28
    sput-object v0, Lo/cD$extraCallback;->zzf:Lo/cD$extraCallback;

    .line 29
    const-class v1, Lo/cD$extraCallback;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cD$extraCallback;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/cD$extraCallback;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback()Lo/cD$extraCallback;
    .locals 1

    .line 26
    sget-object v0, Lo/cD$extraCallback;->zzf:Lo/cD$extraCallback;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lo/fS;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lo/cD$extraCallback;->zzg:Lo/en;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lo/cD$extraCallback;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lo/cD$extraCallback;->zzg:Lo/en;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cD$extraCallback;->zzf:Lo/cD$extraCallback;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 20
    sput-object p1, Lo/cD$extraCallback;->zzg:Lo/en;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lo/cD$extraCallback;->zzf:Lo/cD$extraCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lo/cD$extraCallback;->zzf:Lo/cD$extraCallback;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-static {p2, p3, p1}, Lo/cD$extraCallback;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lo/cD$extraCallback$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/cD$extraCallback$ICustomTabsCallback;-><init>(Lo/fS;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lo/cD$extraCallback;

    invoke-direct {p1}, Lo/cD$extraCallback;-><init>()V

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

.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/cD$extraCallback;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/cD$extraCallback;->zze:Ljava/lang/String;

    return-object v0
.end method
