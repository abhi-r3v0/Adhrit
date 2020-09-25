.class public final Lo/init;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/init$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/init$ICustomTabsCallback;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setTransitioning;

.field public final onNavigationEvent:Lo/setTransitioning;

.field public final onPostMessage:Lo/setTransitioning;

.field public final onTransact:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/init$ICustomTabsCallback;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/init;->extraCallback:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lo/init;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    .line 38
    iput-object p3, p0, Lo/init;->onNavigationEvent:Lo/setTransitioning;

    .line 39
    iput-object p4, p0, Lo/init;->onPostMessage:Lo/setTransitioning;

    .line 40
    iput-object p5, p0, Lo/init;->onMessageChannelReady:Lo/setTransitioning;

    .line 41
    iput-boolean p6, p0, Lo/init;->onTransact:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 0

    .line 69
    new-instance p1, Lo/setupAnimatorToVisibility;

    invoke-direct {p1, p2, p0}, Lo/setupAnimatorToVisibility;-><init>(Lo/setOverlayMode;Lo/init;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim Path: {start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/init;->onNavigationEvent:Lo/setTransitioning;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/init;->onPostMessage:Lo/setTransitioning;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/init;->onMessageChannelReady:Lo/setTransitioning;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
