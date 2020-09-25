.class final Lo/nameAndPriorityCompare$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nameAndPriorityCompare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/reflect/Type;

.field private final onMessageChannelReady:Ljava/lang/reflect/Type;

.field private final onPostMessage:[Ljava/lang/reflect/Type;


# direct methods
.method varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    .line 376
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    goto :goto_2

    .line 377
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 380
    :cond_3
    :goto_2
    array-length v0, p3

    :goto_3
    if-ge v1, v0, :cond_4

    aget-object v2, p3, v1

    const-string v3, "typeArgument == null"

    .line 381
    invoke-static {v2, v3}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    invoke-static {v2}, Lo/nameAndPriorityCompare;->onMessageChannelReady(Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 385
    :cond_4
    iput-object p1, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->extraCallback:Ljava/lang/reflect/Type;

    .line 386
    iput-object p2, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    .line 387
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 403
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lo/nameAndPriorityCompare;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 391
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 399
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->extraCallback:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 395
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 407
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->extraCallback:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/nameAndPriorityCompare;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 411
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 413
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_0
    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    const-string v0, ", "

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/nameAndPriorityCompare$onMessageChannelReady;->onPostMessage:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    invoke-static {v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ">"

    .line 418
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
