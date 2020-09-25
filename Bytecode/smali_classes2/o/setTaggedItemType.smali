.class public final Lo/setTaggedItemType;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTaggedItemType$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MarketingMessageStatus<",
        "Lo/setTaggedItemType;",
        "Lo/setTaggedItemType$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zze:Lo/setTaggedItemType;

.field private static volatile zzf:Lo/uploadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/uploadState<",
            "Lo/setTaggedItemType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:J

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/setTaggedItemType;

    invoke-direct {v0}, Lo/setTaggedItemType;-><init>()V

    .line 26
    sput-object v0, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    .line 27
    const-class v1, Lo/setTaggedItemType;

    invoke-static {v1, v0}, Lo/MarketingMessageStatus;->onNavigationEvent(Ljava/lang/Class;Lo/MarketingMessageStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    return-void
.end method

.method public static asBinder()Lo/setTaggedItemType;
    .locals 1

    .line 23
    sget-object v0, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    return-object v0
.end method

.method static synthetic onTransact()Lo/setTaggedItemType;
    .locals 1

    .line 24
    sget-object v0, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    return-object v0
.end method


# virtual methods
.method public final asInterface()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lo/setTaggedItemType;->zzc:J

    return-wide v0
.end method

.method protected final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lo/UnsupportedFragmentConfig;->onPostMessage:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lo/setTaggedItemType;->zzf:Lo/uploadState;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lo/setTaggedItemType;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lo/setTaggedItemType;->zzf:Lo/uploadState;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lo/MarketingMessageStatus$onPostMessage;

    sget-object p3, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    invoke-direct {p1, p3}, Lo/MarketingMessageStatus$onPostMessage;-><init>(Lo/MarketingMessageStatus;)V

    .line 17
    sput-object p1, Lo/setTaggedItemType;->zzf:Lo/uploadState;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    .line 9
    sget-object p2, Lo/setTaggedItemType;->zze:Lo/setTaggedItemType;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    invoke-static {p2, p3, p1}, Lo/setTaggedItemType;->ICustomTabsCallback(Lo/access$502;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lo/setTaggedItemType$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/setTaggedItemType$ICustomTabsCallback;-><init>(Lo/UnsupportedFragmentConfig;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lo/setTaggedItemType;

    invoke-direct {p1}, Lo/setTaggedItemType;-><init>()V

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
