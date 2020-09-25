.class public final Lo/value;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/validateEqualToCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/value$onNavigationEvent;,
        Lo/value$ICustomTabsCallback;,
        Lo/value$extraCallback;,
        Lo/value$onPostMessage;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;

.field private static final onNavigationEvent:Lo/matches;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lo/value$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/value;->extraCallback:Ljava/util/logging/Logger;

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/value;->onNavigationEvent:Lo/matches;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/fullLimitUpdateChild;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1761
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 1762
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1763
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static synthetic ICustomTabsCallback()Ljava/util/logging/Logger;
    .locals 1

    .line 42
    sget-object v0, Lo/value;->extraCallback:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 4580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic extraCallback()Lo/matches;
    .locals 1

    .line 42
    sget-object v0, Lo/value;->onNavigationEvent:Lo/matches;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic onNavigationEvent(Lo/filtersNodes;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 4767
    invoke-interface {p0, v0}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 4768
    invoke-interface {p0, v0}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    and-int/lit16 p1, p1, 0xff

    .line 4769
    invoke-interface {p0, p1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    return-void
.end method

.method static synthetic onPostMessage(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2645
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    .line 3584
    new-instance p0, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onPostMessage(Lo/fullLimitUpdateChild;Z)Lo/getDefaultConfig;
    .locals 1

    .line 80
    new-instance v0, Lo/value$onPostMessage;

    invoke-direct {v0, p1, p2}, Lo/value$onPostMessage;-><init>(Lo/fullLimitUpdateChild;Z)V

    return-object v0
.end method

.method public final onPostMessage(Lo/filtersNodes;Z)Lo/getReference;
    .locals 1

    .line 84
    new-instance v0, Lo/value$extraCallback;

    invoke-direct {v0, p1, p2}, Lo/value$extraCallback;-><init>(Lo/filtersNodes;Z)V

    return-object v0
.end method
