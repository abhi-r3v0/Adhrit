.class public final Lo/verifyNotNull;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Throwable;

.field public final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lo/verifyNotNull;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 42
    :cond_1
    check-cast p1, Lo/verifyNotNull;

    .line 1028
    iget-object v1, p0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3028
    iget-object v3, p1, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 3032
    :cond_2
    iget-object v0, p0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 4032
    iget-object p1, p1, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6032
    iget-object v0, p0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7028
    iget-object v1, p0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7032
    iget-object v1, p0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
