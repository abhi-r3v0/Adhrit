.class final Lo/computeFixed32Size$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeFixed32Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:[Ljava/lang/reflect/Type;

.field private final onNavigationEvent:Ljava/lang/reflect/Type;

.field private final onPostMessage:Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 468
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 470
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 1046
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    :goto_3
    const/4 v0, 0x0

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_4

    .line 474
    :cond_6
    invoke-static {p1}, Lo/computeFixed32Size;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lo/computeFixed32Size$extraCallback;->onPostMessage:Ljava/lang/reflect/Type;

    .line 475
    invoke-static {p2}, Lo/computeFixed32Size;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lo/computeFixed32Size$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 476
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    .line 477
    array-length p1, p1

    :goto_5
    if-ge v1, p1, :cond_8

    .line 478
    iget-object p2, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    aget-object p3, p2, v1

    if-eqz p3, :cond_7

    .line 479
    aget-object p2, p2, v1

    invoke-static {p2}, Lo/computeFixed32Size;->onMessageChannelReady(Ljava/lang/reflect/Type;)V

    .line 480
    iget-object p2, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    aget-object p3, p2, v1

    invoke-static {p3}, Lo/computeFixed32Size;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p3

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2039
    :cond_7
    throw v0

    :cond_8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 497
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 498
    invoke-static {p0, p1}, Lo/computeFixed32Size;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

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

    .line 485
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 493
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onPostMessage:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 489
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 502
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/computeFixed32Size$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 503
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/computeFixed32Size$extraCallback;->onPostMessage:Ljava/lang/reflect/Type;

    .line 504
    invoke-static {v1}, Lo/computeFixed32Size;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 508
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lo/computeFixed32Size$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lo/computeFixed32Size;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    iget-object v2, p0, Lo/computeFixed32Size$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lo/computeFixed32Size;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lo/computeFixed32Size;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    const-string v3, ", "

    .line 516
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/computeFixed32Size$extraCallback;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lo/computeFixed32Size;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ">"

    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
