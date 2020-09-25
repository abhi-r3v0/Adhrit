.class final Lo/cancelInternal$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Lo/cancelInternal$onPostMessage;

.field final extraCallback:I

.field final onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lo/cancelInternal$onPostMessage;

    .line 207
    iput-object v0, p0, Lo/cancelInternal$onPostMessage;->ICustomTabsCallback:[Lo/cancelInternal$onPostMessage;

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lo/cancelInternal$onPostMessage;->onPostMessage:I

    .line 209
    iput v0, p0, Lo/cancelInternal$onPostMessage;->extraCallback:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lo/cancelInternal$onPostMessage;->ICustomTabsCallback:[Lo/cancelInternal$onPostMessage;

    .line 220
    iput p1, p0, Lo/cancelInternal$onPostMessage;->onPostMessage:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 222
    :cond_0
    iput p1, p0, Lo/cancelInternal$onPostMessage;->extraCallback:I

    return-void
.end method
