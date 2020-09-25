.class public final Lo/t$d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/t$d;

.field public static final extraCallback:Lo/t$d;

.field public static final onMessageChannelReady:Lo/t$d;

.field public static final onNavigationEvent:Lo/t$d;

.field public static final onPostMessage:Lo/t$d;


# instance fields
.field public final ICustomTabsCallback$Stub:J

.field public final onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lo/t$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lo/t$d;-><init>(JJ)V

    sput-object v0, Lo/t$d;->onPostMessage:Lo/t$d;

    .line 41
    new-instance v0, Lo/t$d;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v3, v4}, Lo/t$d;-><init>(JJ)V

    sput-object v0, Lo/t$d;->onMessageChannelReady:Lo/t$d;

    .line 44
    new-instance v0, Lo/t$d;

    invoke-direct {v0, v3, v4, v1, v2}, Lo/t$d;-><init>(JJ)V

    sput-object v0, Lo/t$d;->onNavigationEvent:Lo/t$d;

    .line 46
    new-instance v0, Lo/t$d;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/t$d;-><init>(JJ)V

    sput-object v0, Lo/t$d;->extraCallback:Lo/t$d;

    .line 48
    sget-object v0, Lo/t$d;->onPostMessage:Lo/t$d;

    sput-object v0, Lo/t$d;->ICustomTabsCallback:Lo/t$d;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 68
    :goto_0
    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 70
    iput-wide p1, p0, Lo/t$d;->onTransact:J

    .line 71
    iput-wide p3, p0, Lo/t$d;->ICustomTabsCallback$Stub:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lo/t$d;

    .line 83
    iget-wide v2, p0, Lo/t$d;->onTransact:J

    iget-wide v4, p1, Lo/t$d;->onTransact:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/t$d;->ICustomTabsCallback$Stub:J

    iget-wide v4, p1, Lo/t$d;->ICustomTabsCallback$Stub:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 89
    iget-wide v0, p0, Lo/t$d;->onTransact:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lo/t$d;->ICustomTabsCallback$Stub:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
