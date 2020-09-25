.class public final Lo/onAuthRevoked$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAuthRevoked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 326
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 327
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "rawConfigValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "policyName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 340
    instance-of v0, p1, Lo/onAuthRevoked$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 341
    check-cast p1, Lo/onAuthRevoked$ICustomTabsCallback;

    .line 342
    iget-object v0, p0, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p1, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    iget-object p1, p1, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 343
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 355
    iget-object v1, p0, Lo/onAuthRevoked$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "policyName"

    .line 356
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/onAuthRevoked$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/Map;

    const-string v2, "rawConfigValue"

    .line 357
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
