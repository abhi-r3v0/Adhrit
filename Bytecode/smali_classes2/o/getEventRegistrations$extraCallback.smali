.class final Lo/getEventRegistrations$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventRegistrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Lo/getEventRegistrations$extraCallback;

.field final onMessageChannelReady:I

.field final onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lo/getEventRegistrations$extraCallback;

    .line 209
    iput-object v0, p0, Lo/getEventRegistrations$extraCallback;->ICustomTabsCallback:[Lo/getEventRegistrations$extraCallback;

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lo/getEventRegistrations$extraCallback;->onMessageChannelReady:I

    .line 211
    iput v0, p0, Lo/getEventRegistrations$extraCallback;->onPostMessage:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lo/getEventRegistrations$extraCallback;->ICustomTabsCallback:[Lo/getEventRegistrations$extraCallback;

    .line 222
    iput p1, p0, Lo/getEventRegistrations$extraCallback;->onMessageChannelReady:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 224
    :cond_0
    iput p1, p0, Lo/getEventRegistrations$extraCallback;->onPostMessage:I

    return-void
.end method
