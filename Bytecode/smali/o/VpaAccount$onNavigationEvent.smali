.class final Lo/VpaAccount$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VpaAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final ICustomTabsCallback:F

.field final onMessageChannelReady:I

.field final onNavigationEvent:I


# direct methods
.method constructor <init>(FII)V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput p1, p0, Lo/VpaAccount$onNavigationEvent;->ICustomTabsCallback:F

    .line 729
    iput p2, p0, Lo/VpaAccount$onNavigationEvent;->onNavigationEvent:I

    .line 730
    iput p3, p0, Lo/VpaAccount$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method
