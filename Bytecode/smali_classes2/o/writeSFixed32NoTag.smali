.class public final Lo/writeSFixed32NoTag;
.super Lo/writeEnumNoTag;
.source ""


# instance fields
.field public final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1039
    throw p1
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2039
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3039
    throw p1
.end method

.method private static ICustomTabsCallback(Lo/writeSFixed32NoTag;)Z
    .locals 2

    .line 288
    iget-object p0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 289
    check-cast p0, Ljava/lang/Number;

    .line 290
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Number;
    .locals 2

    .line 125
    iget-object v0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lo/computeSFixed64Size;

    iget-object v1, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/computeSFixed64Size;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    check-cast p1, Lo/writeSFixed32NoTag;

    .line 267
    iget-object v2, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 268
    iget-object p1, p1, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 270
    :cond_3
    invoke-static {p0}, Lo/writeSFixed32NoTag;->ICustomTabsCallback(Lo/writeSFixed32NoTag;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lo/writeSFixed32NoTag;->ICustomTabsCallback(Lo/writeSFixed32NoTag;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    invoke-virtual {p0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    .line 273
    :cond_5
    iget-object v2, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    .line 274
    invoke-virtual {p0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 277
    invoke-virtual {p1}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_7

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v0

    .line 280
    :cond_8
    iget-object v0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    iget-object p1, p1, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 243
    iget-object v0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    .line 247
    :cond_0
    invoke-static {p0}, Lo/writeSFixed32NoTag;->ICustomTabsCallback(Lo/writeSFixed32NoTag;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 251
    :cond_1
    iget-object v0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 2

    .line 3114
    iget-object v0, p0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4091
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 147
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
