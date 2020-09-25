.class final Lo/addChannel$2;
.super Lo/setAndroidIdData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAndroidIdData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/addChannel;


# direct methods
.method constructor <init>(Lo/addChannel;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/addChannel$2;->onNavigationEvent:Lo/addChannel;

    invoke-direct {p0}, Lo/setAndroidIdData;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(F)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/addChannel$2;->onNavigationEvent:Lo/addChannel;

    .line 3031
    invoke-virtual {v0, p1}, Lo/WorkerParameters;->ICustomTabsCallback(F)Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/addChannel$2;->onNavigationEvent:Lo/addChannel;

    .line 1031
    iget-object v1, v0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    .line 70
    invoke-virtual {v0, p1, p2, v1}, Lo/addChannel;->extraCallback(Ljava/lang/Object;ILo/setPreinstallAttribution;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/addChannel$2;->onNavigationEvent:Lo/addChannel;

    invoke-static {v0, p1}, Lo/addChannel;->extraCallback(Lo/addChannel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/addChannel$2;->onNavigationEvent:Lo/addChannel;

    .line 2031
    invoke-virtual {v0}, Lo/addChannel;->onRelationshipValidationResult()V

    return-void
.end method
