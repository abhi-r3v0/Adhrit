.class public abstract Lo/iteratorFrom;
.super Lo/getMinKey$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/iteratorFrom$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/reverseIteratorFrom$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/iteratorFrom$onMessageChannelReady;

    invoke-direct {v0}, Lo/iteratorFrom$onMessageChannelReady;-><init>()V

    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0

    sput-object v0, Lo/iteratorFrom;->ICustomTabsCallback:Lo/reverseIteratorFrom$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/getMinKey$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 1

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onPostMessage()Lo/reverseIteratorFrom$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    .line 76
    sget-object v0, Lo/iteratorFrom;->ICustomTabsCallback:Lo/reverseIteratorFrom$onPostMessage;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 82
    invoke-virtual {p0}, Lo/iteratorFrom;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "policy"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    const-string v1, "priority"

    const/4 v2, 0x5

    .line 83
    invoke-virtual {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    const-string v1, "available"

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
