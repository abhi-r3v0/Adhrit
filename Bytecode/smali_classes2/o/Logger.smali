.class final Lo/Logger;
.super Lo/getSessionFileProvider;


# instance fields
.field private final extraCallback:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Lo/getSessionFileProvider;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/Logger;->extraCallback:Landroid/app/PendingIntent;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null pendingIntent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo/getSessionFileProvider;

    if-eqz v0, :cond_1

    check-cast p1, Lo/getSessionFileProvider;

    iget-object v0, p0, Lo/Logger;->extraCallback:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lo/getSessionFileProvider;->extraCallback()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final extraCallback()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/Logger;->extraCallback:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lo/Logger;->extraCallback:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo/Logger;->extraCallback:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ReviewInfo{pendingIntent="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
