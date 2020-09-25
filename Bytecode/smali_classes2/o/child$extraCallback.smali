.class public final Lo/child$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/child;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:Z

.field onMessageChannelReady:[Ljava/lang/String;

.field onPostMessage:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/child;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {p1}, Lo/child;->onNavigationEvent(Lo/child;)Z

    move-result v0

    iput-boolean v0, p0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    .line 261
    invoke-static {p1}, Lo/child;->extraCallback(Lo/child;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/child$extraCallback;->onMessageChannelReady:[Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lo/child;->onMessageChannelReady(Lo/child;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/child$extraCallback;->onPostMessage:[Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lo/child;->ICustomTabsCallback(Lo/child;)Z

    move-result p1

    iput-boolean p1, p0, Lo/child$extraCallback;->extraCallback:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-boolean p1, p0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final varargs extraCallback([Lo/runTransaction;)Lo/child$extraCallback;
    .locals 3

    .line 300
    iget-boolean v0, p0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 302
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 303
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 304
    aget-object v2, p1, v1

    iget-object v2, v2, Lo/runTransaction;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0, v0}, Lo/child$extraCallback;->onNavigationEvent([Ljava/lang/String;)Lo/child$extraCallback;

    move-result-object p1

    return-object p1

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onMessageChannelReady([Ljava/lang/String;)Lo/child$extraCallback;
    .locals 1

    .line 283
    iget-boolean v0, p0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 285
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/child$extraCallback;->onMessageChannelReady:[Ljava/lang/String;

    return-object p0

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs onNavigationEvent([Ljava/lang/String;)Lo/child$extraCallback;
    .locals 1

    .line 311
    iget-boolean v0, p0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 313
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/child$extraCallback;->onPostMessage:[Ljava/lang/String;

    return-object p0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
