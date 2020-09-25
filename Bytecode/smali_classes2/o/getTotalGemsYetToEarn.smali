.class public final Lo/getTotalGemsYetToEarn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:I

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getTotalGemsYetToEarn;->ICustomTabsCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/getTotalGemsYetToEarn;->onPostMessage:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lo/getTotalGemsYetToEarn;->onMessageChannelReady:Z

    .line 5
    iput p4, p0, Lo/getTotalGemsYetToEarn;->extraCallback:I

    .line 6
    iput-boolean p5, p0, Lo/getTotalGemsYetToEarn;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getTotalGemsYetToEarn;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/getTotalGemsYetToEarn;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method final onNavigationEvent()I
    .locals 1

    .line 10
    iget v0, p0, Lo/getTotalGemsYetToEarn;->extraCallback:I

    return v0
.end method

.method final onPostMessage()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/getTotalGemsYetToEarn;->onNavigationEvent:Z

    return v0
.end method
