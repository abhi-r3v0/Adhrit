.class public final Lo/ViewBoundsCheck$ViewBounds$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewBoundsCheck$ViewBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final extraCallback:J

.field public final onPostMessage:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p3, p0, Lo/ViewBoundsCheck$ViewBounds$extraCallback;->onPostMessage:J

    .line 137
    iput-wide p5, p0, Lo/ViewBoundsCheck$ViewBounds$extraCallback;->extraCallback:J

    return-void
.end method
