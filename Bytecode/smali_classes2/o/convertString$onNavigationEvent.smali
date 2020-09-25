.class public final Lo/convertString$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/convertString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:Z

.field onMessageChannelReady:[Ljava/lang/String;

.field onPostMessage:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/convertString;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget-boolean v0, p1, Lo/convertString;->onPostMessage:Z

    iput-boolean v0, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    .line 271
    iget-object v0, p1, Lo/convertString;->asInterface:[Ljava/lang/String;

    iput-object v0, p0, Lo/convertString$onNavigationEvent;->onPostMessage:[Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lo/convertString;->onTransact:[Ljava/lang/String;

    iput-object v0, p0, Lo/convertString$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    .line 273
    iget-boolean p1, p1, Lo/convertString;->onNavigationEvent:Z

    iput-boolean p1, p0, Lo/convertString$onNavigationEvent;->extraCallback:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-boolean p1, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;
    .locals 1

    .line 293
    iget-boolean v0, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 295
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/convertString$onNavigationEvent;->onPostMessage:[Ljava/lang/String;

    return-object p0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs extraCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;
    .locals 1

    .line 321
    iget-boolean v0, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 323
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/convertString$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    return-object p0

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onNavigationEvent([Lo/childRemovedChange;)Lo/convertString$onNavigationEvent;
    .locals 3

    .line 310
    iget-boolean v0, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 312
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 313
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 314
    aget-object v2, p1, v1

    iget-object v2, v2, Lo/childRemovedChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0, v0}, Lo/convertString$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;

    move-result-object p1

    return-object p1

    .line 310
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onPostMessage([Lo/convertLong;)Lo/convertString$onNavigationEvent;
    .locals 3

    .line 283
    iget-boolean v0, p0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 285
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 286
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 287
    aget-object v2, p1, v1

    iget-object v2, v2, Lo/convertLong;->updateVisuals:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lo/convertString$onNavigationEvent;->ICustomTabsCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;

    move-result-object p1

    return-object p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
