.class public final Lo/AppsFlyerLibCore$8;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/AppsFlyerLibCore$8;

.field public static final asBinder:Lo/AppsFlyerLibCore$8;

.field public static final extraCallback:Lo/AppsFlyerLibCore$8;

.field public static final onMessageChannelReady:Lo/AppsFlyerLibCore$8;

.field public static final onNavigationEvent:Lo/AppsFlyerLibCore$8;

.field public static final onPostMessage:Lo/AppsFlyerLibCore$8;


# instance fields
.field private final onTransact:Lo/getRewardsExpired;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->onMessageChannelReady:Lo/AppsFlyerLibCore$8;

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->extraCallback:Lo/AppsFlyerLibCore$8;

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->onNavigationEvent:Lo/AppsFlyerLibCore$8;

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->onPostMessage:Lo/AppsFlyerLibCore$8;

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->ICustomTabsCallback:Lo/AppsFlyerLibCore$8;

    new-instance v0, Lo/AppsFlyerLibCore$8;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lo/AppsFlyerLibCore$8;-><init>(II)V

    sput-object v0, Lo/AppsFlyerLibCore$8;->asBinder:Lo/AppsFlyerLibCore$8;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    new-instance v0, Lo/getRewardsExpired;

    invoke-direct {v0, p1, p2}, Lo/getRewardsExpired;-><init>(II)V

    invoke-direct {p0, v0}, Lo/AppsFlyerLibCore$8;-><init>(Lo/getRewardsExpired;)V

    return-void
.end method

.method public constructor <init>(Lo/getRewardsExpired;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lo/AppsFlyerLibCore$8;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lo/AppsFlyerLibCore$8;

    iget-object v0, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    iget-object p1, p1, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback()I
    .locals 1

    iget-object v0, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    .line 2000
    iget v0, v0, Lo/getRewardsExpired;->warmup:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget-object v0, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    .line 1000
    iget v0, v0, Lo/getRewardsExpired;->asBinder:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/AppsFlyerLibCore$8;->onTransact:Lo/getRewardsExpired;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
