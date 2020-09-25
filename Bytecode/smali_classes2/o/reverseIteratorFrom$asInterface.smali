.class public final Lo/reverseIteratorFrom$asInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/reverseIteratorFrom$onPostMessage;

.field public final onPostMessage:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Lo/reverseIteratorFrom$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Lo/serverCacheEstimatedSizeInBytes;",
            "Lo/reverseIteratorFrom$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 702
    check-cast p2, Lo/serverCacheEstimatedSizeInBytes;

    iput-object p2, p0, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 703
    iput-object p3, p0, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 771
    instance-of v0, p1, Lo/reverseIteratorFrom$asInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 774
    :cond_0
    check-cast p1, Lo/reverseIteratorFrom$asInterface;

    .line 775
    iget-object v0, p0, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, p1, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 3052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 775
    iget-object v0, p0, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v2, p1, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 4052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 776
    iget-object v0, p0, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    iget-object p1, p1, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_5

    .line 5052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 785
    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 759
    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    const-string v2, "addresses"

    .line 760
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    const-string v2, "attributes"

    .line 761
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    const-string v2, "serviceConfig"

    .line 762
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
