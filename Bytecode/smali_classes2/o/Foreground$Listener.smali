.class public final Lo/Foreground$Listener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:[B

.field public final extraCallback:Lo/isEnableLog;


# direct methods
.method public constructor <init>(Lo/isEnableLog;[B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    .line 41
    iput-object p2, p0, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encoding is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_0
    instance-of v0, p1, Lo/Foreground$Listener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 57
    :cond_1
    check-cast p1, Lo/Foreground$Listener;

    .line 59
    iget-object v0, p0, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    iget-object v2, p1, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 60
    :cond_2
    iget-object v0, p0, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    iget-object p1, p1, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 68
    iget-object v1, p0, Lo/Foreground$Listener;->ICustomTabsCallback:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncodedPayload{encoding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/Foreground$Listener;->extraCallback:Lo/isEnableLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytes=[...]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
