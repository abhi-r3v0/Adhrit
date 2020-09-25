.class public final Lo/setGaTrackingId$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setGaTrackingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public extraCallback:Lo/triggerConnectionSuspended;

.field public onMessageChannelReady:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setGaTrackingId$ICustomTabsCallback;->onMessageChannelReady:Landroid/content/Context;

    .line 3
    new-instance p1, Lo/triggerConnectionSuspended;

    invoke-direct {p1}, Lo/triggerConnectionSuspended;-><init>()V

    iput-object p1, p0, Lo/setGaTrackingId$ICustomTabsCallback;->extraCallback:Lo/triggerConnectionSuspended;

    return-void
.end method
