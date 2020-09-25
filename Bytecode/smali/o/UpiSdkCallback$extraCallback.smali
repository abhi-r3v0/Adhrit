.class public final Lo/UpiSdkCallback$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiSdkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/UpiSdkCallback$onMessageChannelReady;

.field private final onNavigationEvent:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lo/UpiSdkCallback$extraCallback;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lo/UpiSdkCallback$extraCallback;->onNavigationEvent:J

    .line 48
    new-instance p1, Lo/UpiSdkCallback$onMessageChannelReady;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lo/NPCICLJSInterface;->extraCallback:Lo/NPCICLJSInterface;

    goto :goto_0

    :cond_0
    new-instance p2, Lo/NPCICLJSInterface;

    invoke-direct {p2, v0, v1, p3, p4}, Lo/NPCICLJSInterface;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lo/UpiSdkCallback$onMessageChannelReady;-><init>(Lo/NPCICLJSInterface;)V

    iput-object p1, p0, Lo/UpiSdkCallback$extraCallback;->onMessageChannelReady:Lo/UpiSdkCallback$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
