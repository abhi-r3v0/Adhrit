.class public final Lo/getActions$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 258
    iput v0, p0, Lo/getActions$extraCallback;->extraCallback:I

    const v0, 0x7fffffff

    .line 260
    iput v0, p0, Lo/getActions$extraCallback;->onNavigationEvent:I

    const/16 v0, 0x14

    .line 261
    iput v0, p0, Lo/getActions$extraCallback;->onMessageChannelReady:I

    return-void
.end method
