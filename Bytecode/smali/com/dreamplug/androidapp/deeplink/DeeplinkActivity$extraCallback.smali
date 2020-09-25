.class final Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/getIndexCount;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/androidapp/deeplink/CredPayResultData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;->extraCallback:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 39
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1167
    :goto_0
    check-cast p1, Lo/getIndexCount;

    if-eqz p1, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;->extraCallback:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    .line 2036
    iget p1, p1, Lo/getIndexCount;->onMessageChannelReady:I

    .line 1168
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 1169
    iget-object p1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;->extraCallback:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
