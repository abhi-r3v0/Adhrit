.class final Lo/fy;
.super Lo/fj;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fj<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient asBinder:I

.field private final transient extraCallback:[Ljava/lang/Object;

.field private final transient onMessageChannelReady:[Ljava/lang/Object;

.field private final transient onNavigationEvent:I

.field private final transient onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v6, Lo/fy;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/fy;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lo/fy;->ICustomTabsCallback:Lo/fy;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fj;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fy;->extraCallback:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lo/fy;->onMessageChannelReady:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lo/fy;->onNavigationEvent:I

    .line 5
    iput p2, p0, Lo/fy;->onPostMessage:I

    .line 6
    iput p5, p0, Lo/fy;->asBinder:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 3

    .line 24
    iget-object v0, p0, Lo/fy;->extraCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/fy;->asBinder:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget p1, p0, Lo/fy;->asBinder:I

    add-int/2addr p2, p1

    return p2
.end method

.method final ICustomTabsCallback()[Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/fy;->extraCallback:[Ljava/lang/Object;

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()I
    .locals 1

    .line 23
    iget v0, p0, Lo/fy;->asBinder:I

    return v0
.end method

.method final asBinder()Lo/a$c$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/fy;->extraCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/fy;->asBinder:I

    invoke-static {v0, v1}, Lo/a$c$1;->onNavigationEvent([Ljava/lang/Object;I)Lo/a$c$1;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 8
    iget-object v0, p0, Lo/fy;->onMessageChannelReady:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1}, Lo/et;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v2

    .line 12
    :goto_0
    iget v3, p0, Lo/fy;->onNavigationEvent:I

    and-int/2addr v2, v3

    .line 13
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 16
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final extraCallback()Lo/ft;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ft<",
            "TE;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lo/isClosed;->onNavigationEvent()Lo/a$c$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/isClosed;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/ft;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 28
    iget v0, p0, Lo/fy;->onPostMessage:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/isClosed;->extraCallback()Lo/ft;

    move-result-object v0

    return-object v0
.end method

.method final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 19
    iget v0, p0, Lo/fy;->asBinder:I

    return v0
.end method
