.class public final Lo/u$b$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lo/u$b$onMessageChannelReady;->onPostMessage:I

    .line 54
    iput v0, p0, Lo/u$b$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lo/u$b$onMessageChannelReady;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/u$b;
    .locals 5

    .line 86
    new-instance v0, Lo/u$b;

    iget v1, p0, Lo/u$b$onMessageChannelReady;->onPostMessage:I

    iget v2, p0, Lo/u$b$onMessageChannelReady;->ICustomTabsCallback:I

    iget v3, p0, Lo/u$b$onMessageChannelReady;->extraCallback:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/u$b;-><init>(IIILo/u$b$3;)V

    return-object v0
.end method

.method public final extraCallback(I)Lo/u$b$onMessageChannelReady;
    .locals 0

    .line 78
    iput p1, p0, Lo/u$b$onMessageChannelReady;->extraCallback:I

    return-object p0
.end method

.method public final onMessageChannelReady(I)Lo/u$b$onMessageChannelReady;
    .locals 0

    .line 62
    iput p1, p0, Lo/u$b$onMessageChannelReady;->onPostMessage:I

    return-object p0
.end method
