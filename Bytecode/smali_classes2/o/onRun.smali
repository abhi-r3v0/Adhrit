.class public final Lo/onRun;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Boolean;

.field public onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lo/onRun;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lo/onRun;->ICustomTabsCallback:Ljava/lang/Boolean;

    return-void
.end method
