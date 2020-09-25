.class final Lo/nameAndPriorityCompare$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nameAndPriorityCompare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/reflect/Type;

.field private final onNavigationEvent:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 460
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 461
    aget-object v0, p2, v3

    if-eqz v0, :cond_1

    .line 462
    aget-object v0, p2, v3

    invoke-static {v0}, Lo/nameAndPriorityCompare;->onMessageChannelReady(Ljava/lang/reflect/Type;)V

    .line 463
    aget-object p1, p1, v3

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 464
    aget-object p1, p2, v3

    iput-object p1, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 465
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 461
    :cond_1
    throw v2

    .line 467
    :cond_2
    aget-object p2, p1, v3

    if-eqz p2, :cond_3

    .line 468
    aget-object p2, p1, v3

    invoke-static {p2}, Lo/nameAndPriorityCompare;->onMessageChannelReady(Ljava/lang/reflect/Type;)V

    .line 469
    iput-object v2, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 470
    aget-object p1, p1, v3

    iput-object p1, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    return-void

    .line 467
    :cond_3
    throw v2

    .line 457
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 483
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lo/nameAndPriorityCompare;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 479
    iget-object v0, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_0
    sget-object v0, Lo/nameAndPriorityCompare;->onMessageChannelReady:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 475
    iget-object v1, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 488
    iget-object v0, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 492
    iget-object v0, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? super "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/nameAndPriorityCompare$extraCallback;->onNavigationEvent:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    return-object v0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? extends "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/nameAndPriorityCompare$extraCallback;->extraCallback:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
