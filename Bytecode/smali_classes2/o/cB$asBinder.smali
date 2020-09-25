.class public final Lo/cB$asBinder;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cB$asBinder$ICustomTabsCallback;,
        Lo/cB$asBinder$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cB$asBinder;",
        "Lo/cB$asBinder$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzh:Lo/cB$asBinder;

.field private static volatile zzi:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cB$asBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/cB$asBinder;

    invoke-direct {v0}, Lo/cB$asBinder;-><init>()V

    .line 37
    sput-object v0, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    .line 38
    const-class v1, Lo/cB$asBinder;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/cB$asBinder;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lo/fa;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cB$asBinder;->zzg:Lo/ay$1;

    return-void
.end method

.method public static onRelationshipValidationResult()Lo/cB$asBinder;
    .locals 1

    .line 34
    sget-object v0, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    return-object v0
.end method

.method static synthetic onTransact()Lo/cB$asBinder;
    .locals 1

    .line 35
    sget-object v0, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lo/f$a;->ICustomTabsCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lo/cB$asBinder;->zzi:Lo/en;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lo/cB$asBinder;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lo/cB$asBinder;->zzi:Lo/en;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 28
    sput-object p1, Lo/cB$asBinder;->zzi:Lo/en;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 18
    invoke-static {}, Lo/cB$asBinder$onPostMessage;->onPostMessage()Lo/fI;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lo/cB$asBinder;->zzh:Lo/cB$asBinder;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    invoke-static {p2, p3, p1}, Lo/cB$asBinder;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lo/cB$asBinder$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/cB$asBinder$ICustomTabsCallback;-><init>(Lo/f$a;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lo/cB$asBinder;

    invoke-direct {p1}, Lo/cB$asBinder;-><init>()V

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

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 8
    iget v0, p0, Lo/cB$asBinder;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/cB$asBinder;->zzg:Lo/ay$1;

    return-object v0
.end method

.method public final asBinder()I
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cB$asBinder;->zzg:Lo/ay$1;

    invoke-interface {v0}, Lo/ay$1;->size()I

    move-result v0

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/cB$asBinder;->zzf:Z

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 10
    iget v0, p0, Lo/cB$asBinder;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 5
    iget v0, p0, Lo/cB$asBinder;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/cB$asBinder;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Lo/cB$asBinder$onPostMessage;
    .locals 1

    .line 6
    iget v0, p0, Lo/cB$asBinder;->zzd:I

    invoke-static {v0}, Lo/cB$asBinder$onPostMessage;->onPostMessage(I)Lo/cB$asBinder$onPostMessage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lo/cB$asBinder$onPostMessage;->extraCallback:Lo/cB$asBinder$onPostMessage;

    :cond_0
    return-object v0
.end method
