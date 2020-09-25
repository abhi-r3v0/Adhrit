.class final Lo/startIntentSenderFromFragment$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startIntentSenderFromFragment;-><init>()V
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
        "Lo/getAllowReturnTransitionOverlap;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/cm/CMResponseState;",
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
.field private synthetic extraCallback:Lo/startIntentSenderFromFragment;


# direct methods
.method constructor <init>(Lo/startIntentSenderFromFragment;)V
    .locals 0

    iput-object p1, p0, Lo/startIntentSenderFromFragment$postMessage;->extraCallback:Lo/startIntentSenderFromFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 50
    check-cast p1, Lo/getAllowReturnTransitionOverlap;

    if-eqz p1, :cond_0

    .line 1143
    iget-object v0, p0, Lo/startIntentSenderFromFragment$postMessage;->extraCallback:Lo/startIntentSenderFromFragment;

    invoke-static {v0, p1}, Lo/startIntentSenderFromFragment;->onMessageChannelReady(Lo/startIntentSenderFromFragment;Lo/getAllowReturnTransitionOverlap;)V

    :cond_0
    return-void
.end method
