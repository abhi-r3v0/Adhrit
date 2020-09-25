.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTextDelegate$onMessageChannelReady;


# instance fields
.field public ICustomTabsCallback:I

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    .line 47
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->onNavigationEvent:I

    .line 51
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->ICustomTabsCallback:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 140
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 144
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->onNavigationEvent:I

    .line 1098
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->onNavigationEvent:I

    if-ne v0, v2, :cond_4

    .line 144
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ICustomTabsCallback:I

    .line 1108
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->ICustomTabsCallback:I

    .line 2085
    iget v3, p1, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 2088
    :cond_1
    iget v3, p1, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    invoke-static {v1, v2, v3}, Landroidx/media/AudioAttributesCompat;->onNavigationEvent(ZII)I

    move-result v3

    :goto_0
    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    or-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    and-int/lit16 v2, v2, 0x111

    if-ne v0, v2, :cond_4

    .line 145
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    .line 2103
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    if-ne v0, v2, :cond_4

    .line 146
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onMessageChannelReady:I

    .line 158
    invoke-static {v1}, Landroidx/media/AudioAttributesCompat;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->onNavigationEvent:I

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->ICustomTabsCallback:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
