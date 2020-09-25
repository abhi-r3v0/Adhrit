.class public Lo/setGuidelineBegin;
.super Lo/CoreComponentFactory;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CoreComponentFactory<",
        "Lo/setGuidelineBegin;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/CoordinatorLayout;
    .annotation runtime Lo/dispatchKeyShortcutEvent;
        ICustomTabsCallback = 0x10
        onMessageChannelReady = 0x4
        onTransact = "5f2a"
    .end annotation
.end field

.field public onNavigationEvent:Ljava/lang/Float;
    .annotation runtime Lo/dispatchKeyShortcutEvent;
        ICustomTabsCallback = 0x30
        onMessageChannelReady = 0x1
        onNavigationEvent = "BCD_Format"
        onTransact = "9f02"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/CoreComponentFactory;-><init>()V

    return-void
.end method
