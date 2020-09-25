.class final Lo/computeEnumSize$onPostMessage;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeEnumSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/computeEnumSize;


# direct methods
.method constructor <init>(Lo/computeEnumSize;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 617
    iget-object v0, p0, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 609
    iget-object v0, p0, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 601
    new-instance v0, Lo/computeEnumSize$onPostMessage$2;

    invoke-direct {v0, p0}, Lo/computeEnumSize$onPostMessage$2;-><init>(Lo/computeEnumSize$onPostMessage;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 613
    iget-object v0, p0, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    .line 1277
    invoke-virtual {v0, p1}, Lo/computeEnumSize;->onPostMessage(Ljava/lang/Object;)Lo/computeEnumSize$onNavigationEvent;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1279
    invoke-virtual {v0, p1, v1}, Lo/computeEnumSize;->ICustomTabsCallback(Lo/computeEnumSize$onNavigationEvent;Z)V

    :cond_0
    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 597
    iget-object v0, p0, Lo/computeEnumSize$onPostMessage;->extraCallback:Lo/computeEnumSize;

    iget v0, v0, Lo/computeEnumSize;->ICustomTabsCallback:I

    return v0
.end method
