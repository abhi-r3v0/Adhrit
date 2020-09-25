.class public final Lo/buildInstanceIdentifierChanged$extraCallback;
.super Lo/buildInstanceIdentifierChanged$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field final onMessageChannelReady:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, p1, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 270
    iput-boolean p2, p0, Lo/buildInstanceIdentifierChanged$extraCallback;->onMessageChannelReady:Z

    return-void
.end method
