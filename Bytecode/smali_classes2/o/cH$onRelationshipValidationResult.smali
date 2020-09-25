.class public final Lo/cH$onRelationshipValidationResult;
.super Lo/fa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cH$onRelationshipValidationResult$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa<",
        "Lo/cH$onRelationshipValidationResult;",
        "Lo/cH$onRelationshipValidationResult$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzd:Lo/cH$onRelationshipValidationResult;

.field private static volatile zze:Lo/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/en<",
            "Lo/cH$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lo/ay$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ay$1<",
            "Lo/cH$onTransact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/cH$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/cH$onRelationshipValidationResult;-><init>()V

    .line 37
    sput-object v0, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    .line 38
    const-class v1, Lo/cH$onRelationshipValidationResult;

    invoke-static {v1, v0}, Lo/fa;->onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fa;-><init>()V

    .line 2
    invoke-static {}, Lo/cH$onRelationshipValidationResult;->onItemLoaded()Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/cH$onRelationshipValidationResult;
    .locals 1

    .line 34
    sget-object v0, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    return-object v0
.end method

.method public static extraCallback()Lo/cH$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 14
    sget-object v0, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/fa;->onResult()Lo/fa$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/cH$onRelationshipValidationResult;Lo/cH$onTransact;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/cH$onRelationshipValidationResult;->onNavigationEvent(Lo/cH$onTransact;)V

    return-void
.end method

.method private final onNavigationEvent(Lo/cH$onTransact;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    .line 9
    invoke-interface {v0}, Lo/ay$1;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lo/fa;->onNavigationEvent(Lo/ay$1;)Lo/ay$1;

    move-result-object v0

    iput-object v0, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    invoke-interface {v0, p1}, Lo/ay$1;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lo/cI;->ICustomTabsCallback:[I

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
    sget-object p1, Lo/cH$onRelationshipValidationResult;->zze:Lo/en;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lo/cH$onRelationshipValidationResult;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lo/cH$onRelationshipValidationResult;->zze:Lo/en;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lo/fa$ICustomTabsCallback;

    sget-object p3, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    invoke-direct {p1, p3}, Lo/fa$ICustomTabsCallback;-><init>(Lo/fa;)V

    .line 28
    sput-object p1, Lo/cH$onRelationshipValidationResult;->zze:Lo/en;

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
    sget-object p1, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    .line 18
    const-class p2, Lo/cH$onTransact;

    aput-object p2, p1, p3

    .line 20
    sget-object p2, Lo/cH$onRelationshipValidationResult;->zzd:Lo/cH$onRelationshipValidationResult;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lo/cH$onRelationshipValidationResult;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lo/cH$onRelationshipValidationResult$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/cH$onRelationshipValidationResult$onNavigationEvent;-><init>(Lo/cI;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lo/cH$onRelationshipValidationResult;

    invoke-direct {p1}, Lo/cH$onRelationshipValidationResult;-><init>()V

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

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$onTransact;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    return-object v0
.end method

.method public final onMessageChannelReady(I)Lo/cH$onTransact;
    .locals 1

    .line 5
    iget-object p1, p0, Lo/cH$onRelationshipValidationResult;->zzc:Lo/ay$1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/ay$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cH$onTransact;

    return-object p1
.end method
