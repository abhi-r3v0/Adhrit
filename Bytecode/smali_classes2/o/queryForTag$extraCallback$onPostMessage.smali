.class public final Lo/queryForTag$extraCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendPut;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/queryForTag$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/text/Regex$Serialized$Companion;",
        "",
        "()V",
        "serialVersionUID",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field public final onMessageChannelReady:Lo/updatePriority;

.field private onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/updatePriority;I)V
    .locals 0

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput-object p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->onMessageChannelReady:Lo/updatePriority;

    .line 1030
    iput p2, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(B)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lo/queryForTag$extraCallback$onPostMessage;->onMessageChannelReady:Lo/updatePriority;

    invoke-virtual {v0, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 1043
    iget p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    .line 1044
    iget p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->onPostMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->onPostMessage:I

    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 1049
    iget v0, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    return v0
.end method

.method public final onNavigationEvent([BII)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/queryForTag$extraCallback$onPostMessage;->onMessageChannelReady:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    .line 1036
    iget p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    sub-int/2addr p1, p3

    iput p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->ICustomTabsCallback:I

    .line 1037
    iget p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->onPostMessage:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/queryForTag$extraCallback$onPostMessage;->onPostMessage:I

    return-void
.end method

.method public final onPostMessage()I
    .locals 1

    .line 1054
    iget v0, p0, Lo/queryForTag$extraCallback$onPostMessage;->onPostMessage:I

    return v0
.end method
