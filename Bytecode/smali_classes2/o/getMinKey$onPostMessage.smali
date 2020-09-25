.class public final Lo/getMinKey$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinKey$onPostMessage$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

.field private final extraCallback:[[Ljava/lang/Object;

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;[[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Lo/serverCacheEstimatedSizeInBytes;",
            "[[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 706
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/getMinKey$onPostMessage;->onNavigationEvent:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 707
    check-cast p2, Lo/serverCacheEstimatedSizeInBytes;

    iput-object p2, p0, Lo/getMinKey$onPostMessage;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    if-eqz p3, :cond_0

    .line 708
    check-cast p3, [[Ljava/lang/Object;

    iput-object p3, p0, Lo/getMinKey$onPostMessage;->extraCallback:[[Ljava/lang/Object;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "customOptions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attrs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses are not set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;[[Ljava/lang/Object;B)V
    .locals 0

    .line 699
    invoke-direct {p0, p1, p2, p3}, Lo/getMinKey$onPostMessage;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;[[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 757
    iget-object v1, p0, Lo/getMinKey$onPostMessage;->onNavigationEvent:Ljava/util/List;

    const-string v2, "addrs"

    .line 758
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getMinKey$onPostMessage;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    const-string v2, "attrs"

    .line 759
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getMinKey$onPostMessage;->extraCallback:[[Ljava/lang/Object;

    .line 760
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
