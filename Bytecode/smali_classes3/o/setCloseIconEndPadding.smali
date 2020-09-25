.class public final Lo/setCloseIconEndPadding;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:J

.field public final extraCallback:J

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lo/setCloseIconEndPadding;->extraCallback:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo/setCloseIconEndPadding;->onPostMessage:Z

    .line 8
    iput-boolean p5, p0, Lo/setCloseIconEndPadding;->ICustomTabsCallback:Z

    .line 9
    iput-wide p6, p0, Lo/setCloseIconEndPadding;->ICustomTabsCallback$Stub:J

    return-void
.end method
