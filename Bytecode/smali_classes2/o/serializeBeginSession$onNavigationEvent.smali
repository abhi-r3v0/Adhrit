.class public final Lo/serializeBeginSession$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeBeginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/reflect/Type;

.field private final onMessageChannelReady:Ljava/lang/reflect/Type;

.field public final onPostMessage:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 3

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 360
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unexpected owner type for "

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 362
    invoke-static {p1}, Lo/serializeSessionOs;->ICustomTabsCallback(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": null"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_4

    move-object p1, v0

    goto :goto_1

    .line 372
    :cond_4
    invoke-static {p1}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lo/serializeBeginSession$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Type;

    .line 373
    invoke-static {p2}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lo/serializeBeginSession$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    .line 374
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    const/4 p1, 0x0

    .line 375
    :goto_2
    iget-object p2, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length p3, p2

    if-ge p1, p3, :cond_6

    .line 376
    aget-object p3, p2, p1

    if-eqz p3, :cond_5

    .line 377
    aget-object p2, p2, p1

    invoke-static {p2}, Lo/serializeBeginSession;->extraCallback(Ljava/lang/reflect/Type;)V

    .line 378
    iget-object p2, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    aget-object p3, p2, p1

    invoke-static {p3}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 376
    :cond_5
    throw v0

    :cond_6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 395
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 396
    invoke-static {p0, p1}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

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

    .line 383
    iget-object v0, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 391
    iget-object v0, p0, Lo/serializeBeginSession$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 387
    iget-object v0, p0, Lo/serializeBeginSession$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 400
    iget-object v0, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Type;

    .line 402
    invoke-static {v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lo/serializeBeginSession;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "<"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Lo/serializeBeginSession;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :goto_0
    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    const-string v1, ", "

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/serializeBeginSession$onNavigationEvent;->onPostMessage:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-static {v1}, Lo/serializeBeginSession;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
