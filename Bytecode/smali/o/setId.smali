.class public final Lo/setId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMinHeight;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:[B

.field private final onMessageChannelReady:Lo/setType;

.field private final onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

.field private final onPostMessage:Lo/valueOf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lo/setId;-><init>([BLo/setType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLo/setType;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 28
    array-length v0, p1

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 34
    iput-object p1, p0, Lo/setId;->extraCallback:[B

    .line 35
    iput-object p3, p0, Lo/setId;->ICustomTabsCallback:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lo/setId;->onMessageChannelReady:Lo/setType;

    const/4 p2, 0x0

    .line 39
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x20

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 40
    sget-object p1, Lo/valueOf;->onNavigationEvent:Lo/valueOf;

    iput-object p1, p0, Lo/setId;->onPostMessage:Lo/valueOf;

    goto :goto_1

    .line 42
    :cond_1
    sget-object p1, Lo/valueOf;->extraCallback:Lo/valueOf;

    iput-object p1, p0, Lo/setId;->onPostMessage:Lo/valueOf;

    .line 49
    :goto_1
    iget-object p1, p0, Lo/setId;->extraCallback:[B

    aget-byte p1, p1, p2

    ushr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x3

    and-int/2addr p1, p2

    int-to-byte p1, p1

    if-eq p1, p3, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    if-eq p1, p2, :cond_2

    .line 61
    sget-object p1, Lo/setMinHeight$ICustomTabsCallback;->extraCallback:Lo/setMinHeight$ICustomTabsCallback;

    iput-object p1, p0, Lo/setId;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    return-void

    .line 58
    :cond_2
    sget-object p1, Lo/setMinHeight$ICustomTabsCallback;->onPostMessage:Lo/setMinHeight$ICustomTabsCallback;

    iput-object p1, p0, Lo/setId;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    return-void

    .line 55
    :cond_3
    sget-object p1, Lo/setMinHeight$ICustomTabsCallback;->ICustomTabsCallback:Lo/setMinHeight$ICustomTabsCallback;

    iput-object p1, p0, Lo/setId;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    return-void

    .line 52
    :cond_4
    sget-object p1, Lo/setMinHeight$ICustomTabsCallback;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    iput-object p1, p0, Lo/setId;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    return-void

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Param tagValueType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Param id cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Param id cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setType;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/setId;->onMessageChannelReady:Lo/setType;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 104
    instance-of v0, p1, Lo/setMinHeight;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    check-cast p1, Lo/setMinHeight;

    .line 2074
    iget-object v0, p0, Lo/setId;->extraCallback:[B

    .line 108
    array-length v0, v0

    invoke-interface {p1}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object v2

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    .line 3074
    :cond_1
    iget-object v0, p0, Lo/setId;->extraCallback:[B

    .line 112
    invoke-interface {p1}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final extraCallback()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lo/setId;->onPostMessage:Lo/valueOf;

    sget-object v1, Lo/valueOf;->onNavigationEvent:Lo/valueOf;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lo/setId;->extraCallback:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0xb1

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/setId;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lo/setId;->extraCallback:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag["

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    iget-object v1, p0, Lo/setId;->extraCallback:[B

    .line 131
    invoke-static {v1}, Lo/extraCallback;->extraCallback([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Name="

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    iget-object v1, p0, Lo/setId;->ICustomTabsCallback:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TagType="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    iget-object v1, p0, Lo/setId;->onPostMessage:Lo/valueOf;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ValueType="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5089
    iget-object v1, p0, Lo/setId;->onMessageChannelReady:Lo/setType;

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Class="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lo/setId;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
