.class public final Lo/access$1302$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$1302;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public extraCallback:Z

.field onMessageChannelReady:[Ljava/lang/String;

.field onNavigationEvent:[Ljava/lang/String;

.field public onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/access$1302;)V
    .locals 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget-boolean v0, p1, Lo/access$1302;->onMessageChannelReady:Z

    iput-boolean v0, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    .line 286
    invoke-static {p1}, Lo/access$1302;->onMessageChannelReady(Lo/access$1302;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$1302$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    .line 287
    invoke-static {p1}, Lo/access$1302;->ICustomTabsCallback(Lo/access$1302;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$1302$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    .line 288
    iget-boolean p1, p1, Lo/access$1302;->ICustomTabsCallback:Z

    iput-boolean p1, p0, Lo/access$1302$onNavigationEvent;->onPostMessage:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean p1, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final varargs extraCallback([Ljava/lang/String;)Lo/access$1302$onNavigationEvent;
    .locals 1

    .line 332
    iget-boolean v0, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Lo/access$1302$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/access$1302$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    :goto_0
    return-object p0

    .line 332
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onMessageChannelReady([Ljava/lang/String;)Lo/access$1302$onNavigationEvent;
    .locals 1

    .line 304
    iget-boolean v0, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lo/access$1302$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/access$1302$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    :goto_0
    return-object p0

    .line 304
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onNavigationEvent([Lo/access$608;)Lo/access$1302$onNavigationEvent;
    .locals 3

    .line 292
    iget-boolean v0, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 295
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 296
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 297
    aget-object v2, p1, v1

    iget-object v2, v2, Lo/access$608;->mayLaunchUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iput-object v0, p0, Lo/access$1302$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    return-object p0

    .line 292
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onPostMessage([Lo/access$2700;)Lo/access$1302$onNavigationEvent;
    .locals 3

    .line 317
    iget-boolean v0, p0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_2

    .line 318
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 323
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 324
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 325
    aget-object v2, p1, v1

    iget-object v2, v2, Lo/access$2700;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iput-object v0, p0, Lo/access$1302$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    return-object p0

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TlsVersion is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
