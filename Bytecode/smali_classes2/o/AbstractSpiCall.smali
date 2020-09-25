.class final Lo/AbstractSpiCall;
.super Lo/UnavailableAnalyticsEventLogger;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/UnavailableAnalyticsEventLogger<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final extraCallback:Lo/AbstractSpiCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AbstractSpiCall<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient ICustomTabsCallback$Stub:I

.field private final transient onMessageChannelReady:I

.field private transient onNavigationEvent:[Ljava/lang/Object;

.field private transient onPostMessage:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v6, Lo/AbstractSpiCall;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/AbstractSpiCall;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lo/AbstractSpiCall;->extraCallback:Lo/AbstractSpiCall;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/UnavailableAnalyticsEventLogger;-><init>()V

    .line 43
    iput-object p1, p0, Lo/AbstractSpiCall;->onPostMessage:[Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lo/AbstractSpiCall;->onNavigationEvent:[Ljava/lang/Object;

    .line 45
    iput p4, p0, Lo/AbstractSpiCall;->ICustomTabsCallback:I

    .line 46
    iput p2, p0, Lo/AbstractSpiCall;->onMessageChannelReady:I

    .line 47
    iput p5, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 1

    .line 89
    iget v0, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method final asBinder()Lo/BreadcrumbHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/AbstractSpiCall;->onPostMessage:[Ljava/lang/Object;

    iget v1, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    invoke-static {v0, v1}, Lo/BreadcrumbHandler;->ICustomTabsCallback([Ljava/lang/Object;I)Lo/BreadcrumbHandler;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 9

    .line 52
    iget-object v0, p0, Lo/AbstractSpiCall;->onNavigationEvent:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    const-wide/32 v3, 0x1b873593

    int-to-long v5, v2

    const-wide/32 v7, -0x3361d2af

    mul-long v5, v5, v7

    long-to-int v2, v5

    const/16 v5, 0xf

    .line 2050
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-long v5, v2

    mul-long v5, v5, v3

    long-to-int v2, v5

    .line 57
    :goto_1
    iget v3, p0, Lo/AbstractSpiCall;->ICustomTabsCallback:I

    and-int/2addr v2, v3

    .line 58
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return v1

    .line 61
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method final extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final extraCallback([Ljava/lang/Object;I)I
    .locals 2

    .line 94
    iget-object p2, p0, Lo/AbstractSpiCall;->onPostMessage:[Ljava/lang/Object;

    iget v0, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget p1, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    add-int/2addr p1, v1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 110
    iget v0, p0, Lo/AbstractSpiCall;->onMessageChannelReady:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 2074
    invoke-virtual {p0}, Lo/BreadcrumbAnalyticsEventReceiver;->onPostMessage()Lo/BreadcrumbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lo/BreadcrumbAnalyticsEventReceiver;->onMessageChannelReady()Lo/DisabledBreadcrumbSource;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/DisabledBreadcrumbSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/DisabledBreadcrumbSource<",
            "TE;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lo/BreadcrumbAnalyticsEventReceiver;->onPostMessage()Lo/BreadcrumbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lo/BreadcrumbAnalyticsEventReceiver;->onMessageChannelReady()Lo/DisabledBreadcrumbSource;

    move-result-object v0

    return-object v0
.end method

.method final onNavigationEvent()[Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/AbstractSpiCall;->onPostMessage:[Ljava/lang/Object;

    return-object v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onTransact()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 69
    iget v0, p0, Lo/AbstractSpiCall;->ICustomTabsCallback$Stub:I

    return v0
.end method
