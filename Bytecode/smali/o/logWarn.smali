.class public final Lo/logWarn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lo/logWarn;->onPostMessage:I

    .line 53
    iput p2, p0, Lo/logWarn;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Lo/logWarn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 93
    :cond_1
    check-cast p1, Lo/logWarn;

    .line 94
    iget v1, p0, Lo/logWarn;->onPostMessage:I

    iget v3, p1, Lo/logWarn;->onPostMessage:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/logWarn;->onMessageChannelReady:I

    iget p1, p1, Lo/logWarn;->onMessageChannelReady:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 99
    iget v0, p0, Lo/logWarn;->onPostMessage:I

    iget v1, p0, Lo/logWarn;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget v1, p0, Lo/logWarn;->onPostMessage:I

    const-string v2, ""

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 75
    iget v4, p0, Lo/logWarn;->onMessageChannelReady:I

    if-ne v4, v3, :cond_1

    goto :goto_1

    .line 2082
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x0

    const-string v2, "%s-%s"

    .line 75
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
