.class final Lo/setMultiFactorHint;
.super Lo/zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzh<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setTimeout;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Ljava/lang/Void;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lo/setMultiFactorHint;->extraCallback:Lo/setTimeout;

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    iput p3, p0, Lo/setMultiFactorHint;->onPostMessage:I

    iput-object p4, p0, Lo/setMultiFactorHint;->onMessageChannelReady:Ljava/lang/String;

    iput p5, p0, Lo/setMultiFactorHint;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lo/setMultiFactorHint;->extraCallback:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lo/setMultiFactorHint;->onNavigationEvent:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lo/setMultiFactorHint;->extraCallback:Lo/setTimeout;

    iget v1, p0, Lo/setMultiFactorHint;->onPostMessage:I

    iget-object v2, p0, Lo/setMultiFactorHint;->onMessageChannelReady:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 4000
    invoke-virtual {v0, v1, v2, p1}, Lo/setTimeout;->ICustomTabsCallback(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
