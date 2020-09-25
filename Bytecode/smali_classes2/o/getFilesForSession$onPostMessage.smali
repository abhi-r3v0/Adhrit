.class final Lo/getFilesForSession$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFilesForSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:[I

.field onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 247
    iput-object v0, p0, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    return-void
.end method
