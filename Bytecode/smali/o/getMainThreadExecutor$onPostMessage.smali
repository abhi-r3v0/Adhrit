.class public final Lo/getMainThreadExecutor$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMainThreadExecutor;
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
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Z

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1028
    iput-boolean v0, p0, Lo/getMainThreadExecutor$onPostMessage;->extraCallback:Z

    const/4 v1, 0x4

    .line 1029
    iput v1, p0, Lo/getMainThreadExecutor$onPostMessage;->onPostMessage:I

    .line 1035
    iput v0, p0, Lo/getMainThreadExecutor$onPostMessage;->onNavigationEvent:I

    return-void
.end method

.method public static synthetic onPostMessage(Lo/getMainThreadExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lo/clearScrap;
    .locals 2

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v1

    .line 68
    :cond_4
    invoke-interface/range {p0 .. p5}, Lo/getMainThreadExecutor;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method
